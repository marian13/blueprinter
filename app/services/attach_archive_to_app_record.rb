# frozen_string_literal: true

class AttachArchiveToAppRecord
  include ApplicationService::Config

  option :app_record
  option :archive_path

  def result
    app_record.archive.attach(io: File.open(archive_path), filename: "archive.zip", content_type: "application/zip")

    success
  end
end
