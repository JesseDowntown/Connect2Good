class OffersController < ApplicationController

	def index
    
    if params[:organization_id]
      @organization = Organization.find(params[:organization_id])
      @offers = @organization.offers
    else
		  @offers = Offer.all
    end


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

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to @offer, notice: 'Offer was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private
  def offer_params
  	params.require(:offer).permit(:image, :donor_id, :need_id, :organization_id, :status, :description)
  end
end