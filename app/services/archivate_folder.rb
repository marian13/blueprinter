# frozen_string_literal: true

class ArchivateFolder
  include ApplicationService::Config

  option :folder_path

  def result
    directory_to_zip = folder_path
    output_file = "abc.zip"
    zf = ::ZipFileGenerator.new(directory_to_zip, output_file)
    zf.write

    success(archive_path: output_file)
  end
end
