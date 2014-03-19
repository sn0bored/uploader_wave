class AddMd5ToUploadFile < ActiveRecord::Migration
  def change
    add_column :upload_files, :md5, :string
  end
end
