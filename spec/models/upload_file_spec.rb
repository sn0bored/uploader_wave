require 'spec_helper'

describe UploadFile do
	
  it "model the exists" do
    upload_file = UploadFile.create
    upload_file.should be_a(UploadFile)
  end

  it "should uploaded a file" do
  	# upload file
  end

  it "should not upload a file if the a file with the exact contents exist" do
  	#uploadfile
  	#try again
  end

end
