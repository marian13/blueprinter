# frozen_string_literal: true

class CreateTempFolder
  include ApplicationService::Config

  def result
    success(path: ::Dir.mktmpdir)
  end
end
