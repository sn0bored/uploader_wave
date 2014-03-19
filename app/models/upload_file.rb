class UploadFile < ActiveRecord::Base
	mount_uploader :content, ContentUploader
  attr_accessible :content, :md5

  validate :no_duplicate_files
  # after_create :create_md5

  def no_duplicate_files

  end
end
