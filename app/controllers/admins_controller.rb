class AdminsController < ActionController::Base
  before_filter :authenticate 


  def show
    @organizations = Organization.all
    @organization = Organization.new
    @offers = Offer.all

    @active = 0
    @pending = 0
    @accepted = 0
    @denied = 0
    @organizations.each do |organization|
      organization.status == true ? @active += 1 : @active
      organization.offers.each do |offer|
        if offer.status == 'pending'
          @pending += 1
        elsif offer.status == 'accepted'
          @accepted += 1
        else
          @denied += 1
        end
      end
    end


  end


private

    def authenticate
      unless current_user.try(:admin?)
           redirect_to root_path
      end
    end


end