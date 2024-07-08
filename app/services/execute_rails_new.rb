# frozen_string_literal: true

class ExecuteRailsNew
  include ApplicationService::Config

  def result
    status = system("bundle exec rails new #{app_name}")

    return error("`bundle exec rails new #{app_name}` returns non-zero exit code") unless status

    success(name: app_name)
  end

  private

  def app_name
    "app"
  end
end
