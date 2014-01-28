class UsersController < ApplicationController
  helper_method :sort_column, :sort_direction
  
	def show
  	@user = User.find(params[:id])
  	@offers = Offer.where(donor_id: @user).order(sort_column + " " + sort_direction)
    @org = Organization.where(owner_id: current_user.id)
	end

  def edit
    @user = User.find(params[:id])
    redirect_to user_path(current_user.id)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
  private
  
  def sort_column
    params[:sort] || "created_at"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
