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

                if result.success?

                elsif result.failure?

                end
              end
            end
          end

          ##
          # replaces stream by frame
          # starts download
          #   or pushes toast
          #
          def download
            app = ::App.find(params[:app_record_id])

            ##
            # NOTE: `::ActiveStorage::Blob.service.path_for(app.archive.key)` is only for local disk storage. Use `redirect_to app.archive.url` for remote storages.
            #
            archive_path = ::ActiveStorage::Blob.service.path_for(app.archive.key)

            options = {
              filename: app.archive.filename.to_s,
              type: app.archive.content_type,
              disposition: "attachment"
            }

            send_file archive_path, **options
          end
        end
      end
    end
  end
end
