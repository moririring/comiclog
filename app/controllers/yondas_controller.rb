class YondasController < ApplicationController
	def create
		@comic = Comic.find(params[:comic_id])
		@yonda = Comic.find(params[:comic_id]).yondas.create(params[:yonda])
		redirect_to comic_path(@comic)
	end
end
