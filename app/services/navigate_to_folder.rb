# frozen_string_literal: true

class NavigateToFolder
  include ApplicationService::Config

  option :path

  def result
    ::FileUtils.cd(path)

    success
  end
end
