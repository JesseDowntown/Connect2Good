class NeedsController < ApplicationController

	def index
		if params[:query].present?
			@needs = Need.text_search(params[:query])
		else
			@needs = Need.all
		end
	end

	def show
		@need = Need.find(params[:id])
	end

end