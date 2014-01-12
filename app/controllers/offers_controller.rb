class OffersController < ApplicationController
  before_filter :fetch_need,  only: [:create]
  before_filter :fetch_offer, only: [:show, :update]

	def index
    if params[:organization_id]
      @organization = Organization.find(params[:organization_id])
      @offers = @organization.offers
    else
		  @offers = Offer.all
    end
	end

	def show
	end

	def new
		@offer 	= Offer.new
 	end

 	def create
    @offer = Offer.new(offer_params)
    @offer.need = @need
    @offer.organization = @organization
    @offer.status = 'pending'

    if @offer.save
      redirect_to @offer, notice: 'Offer was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: 'Offer was successfully updated.'
    else
      render action: 'edit'
    end
  end

private
  def fetch_need
    @need = Need.find(params[:need_id])
  end

  def fetch_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
  	params.require(:offer).permit(
      :image,
      # :donor_id,
      # :need_id,
      # :organization_id,
      :status,
      :description
    )
  end
end