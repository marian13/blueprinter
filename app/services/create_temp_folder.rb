# frozen_string_literal: true

class CreateTempFolder
  include ApplicationService::Config

  def result
    success(temp_folder_path: temp_folder_path)
  end

  private

  def temp_folder_path
    @temp_folder_path ||= ::Dir.mktmpdir
  end
end
