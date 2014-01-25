class AdminsController < ApplicationController
  before_filter :authenticate 


  def show
    @organizations = Organization.all
    @organization = Organization.new
    @offers = Offer.all

  #chart data variables
    #organization active/inactive
    @active = 0
    #offer status
    @pending = 0
    @accepted = 0
    @denied = 0
    #offer created date
  #calculate chart data
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
    #line chart data
    @three_weeks_ago = Offer.where("created_at between ? and ?", 28.days.ago, 21.days.ago).count
    @two_weeks_ago = Offer.where("created_at between ? and ?", 21.days.ago, 14.days.ago).count
    @one_week_ago = Offer.where("created_at between ? and ?", 14.days.ago, 7.days.ago).count
    @this_week = Offer.where("created_at between ? and ?", 7.days.ago, DateTime.now).count
  end


private

    def authenticate
      unless current_user.try(:admin?)
           redirect_to root_path
      end
    end
end