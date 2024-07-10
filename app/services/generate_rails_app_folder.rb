# frozen_string_literal: true

class GenerateRailsAppFolder
  include ApplicationService::Config

  step CreateTempFolder,
    out: :temp_folder_path

  step NavigateToFolder,
    in: {folder_path: :temp_folder_path}

  step ExecuteRailsNewCommand

  step :build_rails_app_folder_path,
    in: :temp_folder_path,
    out: :rails_app_folder_path

  def build_rails_app_folder_path(temp_folder_path:)
    success(rails_app_folder_path: ::File.join(temp_folder_path, "app"))
  end
end
