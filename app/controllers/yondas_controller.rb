class YondasController < ApplicationController
	def create
		@comic = Comic.find(params[:comic_id])
		@yonda = Comic.find(params[:comic_id]).yondas.create(params[:yonda])
		redirect_to comic_path(@comic)
	end

	def destroy
		@yonda = Yonda.find(params[:id])
		@yonda.destroy
		render json: { yonda: @yonda }
	end
end
