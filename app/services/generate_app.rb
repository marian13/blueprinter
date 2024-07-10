# frozen_string_literal: true

class GenerateApp
  include ApplicationService::Config

  step CreateAppRecord,
    out: :app_record

  step GenerateRailsAppFolder,
    out: :rails_app_folder_path

  step ArchivateFolder,
    in: {folder_path: :rails_app_folder_path},
    out: {archive_path: :rails_app_archive_path}

  step AttachArchiveToAppRecord,
    in: [
      {archive_path: :rails_app_archive_path},
      :app_record
    ]

  step ReplaceCreateAppButtonByDownloadAppButton,
    in: :app_record
end
