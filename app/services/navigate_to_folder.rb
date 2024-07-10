# frozen_string_literal: true

class NavigateToFolder
  include ApplicationService::Config

  option :folder_path

  def result
    ::FileUtils.cd(folder_path)

    success
  end
end
