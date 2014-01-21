class UsersController < DeviseController

	def show
  	@user = User.find(params[:id])
  	@offers = Offer.where(donor_id: @user)
	end

	def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
