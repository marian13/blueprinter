##
# - https://userdocs.convenientservice.org/tldr
#
module ApplicationService
  module Config
    include ConvenientService::Concern

    included do
      include ConvenientService::Standard::Config

      if Rails.env.development? || Rails.env.test?
        include ConvenientService::AwesomePrintInspect::Config
      end

      concerns do
        use ConvenientService::Plugins::Common::AssignsAttributesInConstructor::UsingDryInitializer::Concern
        use ConvenientService::Plugins::Service::HasJSendResultParamsValidations::UsingActiveModelValidations::Concern
      end

      middlewares :result do
        insert_before \
          ConvenientService::Plugins::Service::CanHaveConnectedSteps::Middleware,
          ConvenientService::Plugins::Service::HasJSendResultParamsValidations::UsingActiveModelValidations::Middleware
      end

      if !Rails.env.test?
        middlewares :result do
          use ConvenientService::Plugins::Service::RescuesResultUnhandledExceptions::Middleware
        end

        middlewares :result, scope: :class do
          use ConvenientService::Plugins::Service::RescuesResultUnhandledExceptions::Middleware
        end
      end
    end
  end
end
