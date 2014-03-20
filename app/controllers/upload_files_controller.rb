class UploadFilesController < ApplicationController

	def index
		@uploaded_files = UploadFile.all
	end

	def show
		@uploaded_file = UploadFile.find(params[:id])
	end

	def create
		# @uploaded_file = UploadFile.new
	end

end