require 'spec_helper'

describe UploadFile do
	include CarrierWave::Test::Matchers

	before do
		# UpwaveUploader.enable_processing = true
		# @uploader = UpwaveUploader.new(@upload_file, :content)
    # @uploader.store!(File.open())
	end

	after do
    # MyUploader.enable_processing = false
    # @uploader.remove!
  end

	
  it "model the exists" do
    upload_file = UploadFile.create
    upload_file.should be_a(UploadFile)
  end

  it "should uploaded a file" do
  	# upload_file = UploadFile.create
  	# upload_file.content = 
  end

  it "should not upload a file if the a file with the exact contents exist" do
  	#uploadfile
  	#try again
  end

end
