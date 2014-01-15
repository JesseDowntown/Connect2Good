class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
    @needs = @organization.needs.page(params[:page]).per_page(12)
  end

end