# frozen_string_literal: true

class ReplaceCreateAppButtonByDownloadAppButton
  include ApplicationService::Config

  option :app_record

  def result
    ##
    # - https://www.hotrails.dev/turbo-rails/turbo-streams
    #
    ::Turbo::StreamsChannel.broadcast_replace_to(
      "create_app_button",
      target: "create_app_button",
      partial: "web/pages/home/frames/create_app_button/download_app_button",
      locals: {app_record_id: app_record.id}
    )

    success
  end
end
