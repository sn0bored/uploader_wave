class UploadFile < ActiveRecord::Base
	mount_uploader :content, ContentUploader
  attr_accessible :content, :md5

  def no_duplicates?(file)
  	checksum = Digest::SHA256.file(file).hexdigest
  	UploadFile.where(md5: checksum).count == 0 ? true : false
  end

  def create_md5(file)
  	self.md5 = Digest::SHA256.file(file).hexdigest
  	self.save
  end

end
