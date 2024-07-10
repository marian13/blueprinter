# frozen_string_literal: true

module Web
  module Pages
    module Home
      module Frames
        class CreateAppButtonController < ::ApplicationController
          ##
          # replaces generate_app_button by generating_app_button
          # replaces frame by stream
          #   or pushes toast
          def generate
            render partial: "web/pages/home/frames/create_app_button/generating_app_button"

            ##
            # TODO: Worker.
            #
            ::Thread.new do
              ::Rails.application.executor.wrap do
                result = ::GenerateApp.result


                byebug
                byebug

                if result.success?

                elsif result.failure?

                else

                end
              end
            end
          end

          ##
          # replaces stream by frame
          #   or pushes toast
          # - https://github.com/hotwired/turbo-rails/blob/main/app/models/turbo/streams/tag_builder.rb#L43
          #
          def generating
            render turbo_stream.replace "create_app_button", partial: "web/pages/home/frames/create_app_button/download_app_button"
          end

          ##
          # replaces stream by frame
          # starts download
          #   or pushes toast
          #
          def download
            params

            byebug
          end
        end
      end
    end
  end
end
