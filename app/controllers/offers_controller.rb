class OffersController < ApplicationController

	def index
		@offers = Offer.all
	end

	def show
		@offer = Offer.find(params[:id])
	end

	def new
		@offer 	= Offer.new
		@need = Need.find(params[:need_id])

 	end

 	def create
    @offer = Offer.new(offer_params)

    if @offer.save
      redirect_to @offer, notice: 'Offer was successfully created.'
    else
      render action: 'new'
    end
  end

  private
  def offer_params
  	params.require(:offer).permit(:image, :donor_id, :need_id, :organization_id, :status, :description)
  end
end