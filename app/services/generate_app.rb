# frozen_string_literal: true

class GenerateApp
  include ApplicationService::Config

  step CreateTempFolder,
    out: {path: :temp_folder_path}

  step NavigateToFolder,
    in: {temp_folder_path: :path}

  step GenerateRailsApp
    out: {name: :rails_app_name}
end
