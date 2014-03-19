require 'spec_helper'

describe UploadFile do
	include CarrierWave::Test::Matchers

	describe "model" do
		
		it "exists" do
	    upload_file = UploadFile.create
	    upload_file.should be_a(UploadFile)
	  end
  
  end


  describe "uploader" do

		before do
			dir = Rails.root
			test_path = File.join(dir, "spec/test.txt")
			UpwaveUploader.enable_processing = true
			@uploader = UpwaveUploader.new(@upload_file, :content)
	    @uploader.store!(File.open(test_path))
		end

		after do
	    MyUploader.enable_processing = false
	    @uploader.remove!
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

end
