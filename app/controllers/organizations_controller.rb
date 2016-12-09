class OrganizationsController < ApplicationController
    before_action :set_organization, only: [:show, :create, :edit, :update]

  def show
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.save
  end

  def edit
  end

  def update
    @organization.update(organization_params)
  end

  private
    def set_organization
      @organization = Organization.find(params[:id])
    end

    def organization_params
        params.require(:organization).permit(:name, :url, :logo, :description, :email, :phone)
    end
end
