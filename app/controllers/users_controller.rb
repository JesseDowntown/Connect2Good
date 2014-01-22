class UsersController < ApplicationController

	def show
  	@user = User.find(params[:id])
  	@offers = Offer.where(donor_id: @user)
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
end
