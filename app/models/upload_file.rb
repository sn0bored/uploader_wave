class UploadFile < ActiveRecord::Base
	mount_uploader :content, UpwaveUploader
  attr_accessible :content
end
