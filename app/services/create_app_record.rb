# frozen_string_literal: true

class CreateAppRecord
  include ApplicationService::Config

  def result
    return error("App is not valid") unless app_record.valid?

    app_record.save!

    success(app_record: app_record)
  end

  private

  def app_record
    @app_record ||= ::App.new
  end
end
