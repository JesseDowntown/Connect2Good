class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
    @needs = @organization.needs.page(params[:page]).per_page(20)
    @need = Need.new
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to root_path
  end

  def update
    @organization = Organization.find(params[:id])
    @organization.update(organization_params)
  end

  private
  def organization_params
    params.require(:organization).permit(:description, :owner_id, :image)
  end
end