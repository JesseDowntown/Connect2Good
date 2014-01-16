class NeedsController < ApplicationController

	def index
		if params[:query].present?
			@needs = Need.text_search(params[:query]).page(params[:page]).per_page(12)
		else
			@needs = Need.all.page(params[:page]).per_page(12)
		end
	end

	def show
		@need = Need.find(params[:id])
	end

end