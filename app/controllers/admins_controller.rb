class AdminsController < ActionController::Base
  before_filter :authenticate 


  def show
    @organizations = Organization.all
    @organization = Organization.new

    @active = 0
    @organizations.each do |organization|
      organization.status == true ? @active += 1 : @active
    end
  end


private

    def authenticate
      unless current_user.try(:admin?)
           redirect_to root_path
      end
    end


end