class AddContentToUploadFile < ActiveRecord::Migration
  def change
    add_column :upload_files, :content, :string
  end
end
