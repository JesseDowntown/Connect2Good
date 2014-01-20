class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
    @needs = @organization.needs.page(params[:page])
    @need = Need.new 
    @pending = 0
    @offers = @organization.offers
    @offers.each do |offer|
      offer.status == "pending" ? @pending += 1 : @pending
    end  
    @denied = 0
    @offers = @organization.offers
    @offers.each do |offer|
      offer.status == "denied" ? @denied += 1 : @denied
    end  

    @accepted = 0
    @offers = @organization.offers
    @offers.each do |offer|
      offer.status == "accepted" ? @accepted += 1 : @accepted
    end
    respond_to do |format|
      format.html { render action: 'show' }
      format.json { render @offers, status: :updated }
    end
  end

end