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

	def create
		need = Need.new(needs_params)
		need.organization_id = params[:organization_id]
		# respond_to do |format|
      # if need.save
      # 	format.html { redirect_to organization_path(params[:organization_id]) }
      #   format.js
      # else
      #   format.js { render :partial => 'error' }
      # end
    # end
    need.save
  	redirect_to organization_path(params[:organization_id])
	end

	def new
		@need = Need.new
	end

	def edit
		@need = Need.find(params[:id])
	end

	def update
		@need = Need.find(params[:id])
		@need.update(need_params)
		redirect_to root_path
	end

	def destroy
		@need = Need.find(params[:id])
		@need.destroy
		redirect_to organization_path(1)
	end

	private
	def needs_params
		params.require(:need).permit(:description, :organization_id, :category)
	end

end
