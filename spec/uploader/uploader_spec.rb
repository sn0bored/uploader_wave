require 'spec_helper'
require 'digest'

describe ContentUploader do
	include CarrierWave::Test::Matchers

	describe "uploader" do
		
		before do
			# dir = Rails.root
			# test_path = File.join(dir, "spec/test.txt")
			# second_path = File.join(dir, "spec/test2.txt")
			# test_1 = File.open(test_path)
			# first_hash = Digest::SHA256.file(test_1).hexdigest
			# second = File.open(second_path)
			# second_hash = Digest::SHA256.file(second).hexdigest
			# puts first_hash
			# puts second_hash 
			# puts second_hash == first_hash
			# ContentUploader.enable_processing = true
			# @upload_file = UploadFile.create
			# p @upload_file
	    # @upload_file.store!(File.open(test_path))
		end

		after do
	    # ContentUploader.enable_processing = false
	  	# @upload_file.remove!
	  end

  
  end

end
