# frozen_string_literal: true

##
# Sets locale across requests using params.
# - https://guides.rubyonrails.org/i18n.html#setting-the-locale-from-url-params
# - https://guides.rubyonrails.org/i18n.html#managing-the-locale-across-requests
#
module Localization
  module FromParams
    extend ::ActiveSupport::Concern

    included do
      around_action :localize_via_params
    end

    def localize_via_params(&action)
      locale =
        if params[:locale].blank?
          ::I18n.default_locale
        elsif ::I18n.available_locales.map(&:to_s).include?(params[:locale])
          params[:locale]
        else
          ##
          # NOTE: Fallbacks to default locale in case of unknown value in `params[:locale]`.
          #
          # TODO: Log `params[:locale]`.
          #
          ::I18n.default_locale
        end

      ::I18n.with_locale(locale, &action)
    end

    ##
    # NOTE:
    #   > Every helper method dependent on url_for (e.g. helpers for named routes like root_path or root_url,
    #   resource routes like books_path or books_url, etc.) will now automatically include the locale in the
    #   query string, like this: http://localhost:3001/?locale=ja
    #
    #   For more details, "Ctrl + F" for `default_url_options` in:
    #   https://guides.rubyonrails.org/i18n.html#managing-the-locale-across-requests
    #
    # NOTE: `super` may return `nil`.
    # - https://apidock.com/rails/ActionController/Base/default_url_options
    #
    def default_url_options
      super.to_h.merge(locale: ::I18n.locale)
    end
  end
end
