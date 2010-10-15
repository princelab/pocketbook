require 'spec_helper'

include FilesystemHelpers


describe "FilesystemHelpers" do
  describe "compress_folder method" do
    it "should successfully tar up a file and save it to the correct path" do
      file_path = "#{Rails.root}/spec/test_folder"
      compressed_file_name = compress_folder(file_path)
      File::exists?(compressed_file_name).should be_true
      #make sure the file exists
    end
  end

  #remove the test file create by the compression
  after(:each) do
    File.delete "#{Rails.root}/spec/test_folder.tar"
  end
end
