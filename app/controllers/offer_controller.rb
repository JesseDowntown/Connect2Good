class OfferController < ApplicationController

	def index
		@offers = Offer.all
	end

	def show
		@offer = Offer.find(params[:id])
	end

end