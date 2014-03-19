class UploadFile < ActiveRecord::Base
	mount_uploader :content, ContentUploader
  attr_accessible :content
end
