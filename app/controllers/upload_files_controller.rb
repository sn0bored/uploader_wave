class UploadFilesController < ApplicationController

	def index
		@uploaded_files = UploadFile.all
	end

	def show
		@file = UploadFile.find(params[:id])
  	send_file(@file.content.path,
        :type => '*',
        :disposition => 'attachment',
        :url_based_filename => true)
	end

	def create
		if params[:upload_file]
			file = params[:upload_file][:content].tempfile
			new_file = UploadFile.new
			if new_file.no_duplicates?(file)
				new_file.content = params[:upload_file][:content]
				new_file.create_md5(file)
				new_file.save!
				flash[:notice] = "Saved file.  Thanks for sharing!"   
			else
				flash[:alert] = "We said no duplicates.  I am paying for the space here."
			end
		end
		redirect_to :back
	end

	def destroy
		@file = UploadFile.find(params[:id])
		@file.delete
		redirect_to :back
	end	

end