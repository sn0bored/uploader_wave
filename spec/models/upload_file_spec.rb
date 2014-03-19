require 'spec_helper'
require 'digest'

describe UploadFile do
	include CarrierWave::Test::Matchers

	before do
		@upload_file = UploadFile.create
		@dir = Rails.root
  	@test_path = File.join(@dir, "spec/test.txt")
  	@dup_path = File.join(@dir, "spec/test_dup.txt")
	end

	after do
		@upload_file.remove_content!
		@upload_file.save
		@upload_file.delete
	end

	describe "model" do
		
	it "exists" do 
    @upload_file.should be_a(UploadFile)
  end
  
  end

  it "should uploaded a file" do
  	@upload_file.content = File.open(@test_path)
  	@upload_file.save!
  	@upload_file.content.identifier.to_s.should eq ("test.txt")
  end

  it "should not upload a file if the a file with the exact contents exist" do
  	@upload_file.content = File.open(@test_path)
  	@upload_file.save!
  	@new_file = UploadFile.new
  	@upload_file.content = File.open(@dup_path)
  	@upload_file.save.should eq(false)
  end

end