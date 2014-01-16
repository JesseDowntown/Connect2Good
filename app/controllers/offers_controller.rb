class OffersController < ApplicationController
  before_filter :fetch_need,  only: [:create, :new]
  before_filter :fetch_offer, only: [:show, :update]
  before_filter :fetch_organization, only: [:create]

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
    @offer = Offer.new
 	end

 	def create
    @offer = Offer.new(offer_params)
    @offer.need = @need
    @offer.organization = @organization
    @offer.status = 'pending'
    if user_signed_in?
      @offer.donor = current_user
    else
      @offer.donor_id = nil
    end

    if @offer.save
      Notifier.offer_received(@offer).deliver
      Notifier.offer_sent(@offer).deliver
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

  def fetch_organization
    @organization = Organization.find(@need.organization)
  end

  def fetch_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
  	params.require(:offer).permit(
      :email,
      :image,
      # :donor_id,
      # :need_id,
      # :organization_id,
      :status,
      :description
    )
  end
end