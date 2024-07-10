# frozen_string_literal: true

class AttachArchiveToAppRecord
  include ApplicationService::Config

  option :app_record
  option :archive_path

  def result
    app_record.archive.attach(::File.read(archive_path))

    success(app_record: app_record)
  end

  private

  def app_record
    @app_record ||= ::App.new
  end
end
