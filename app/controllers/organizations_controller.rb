class OrganizationsController < ApplicationController
    before_action :set_organization, only: [:show,  :edit, :update]

  def show
  end

  def new
    @organization = Organization.new
    authorize @organization
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.user = current_user
    authorize @organization
    @organization.save!
    redirect_to organization_path(@organization)
  end

  def edit
  end

  def update
    @organization.update(organization_params)
    redirect_to organization_path(@organization)
  end

  def events

  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
    authorize @organization
  end

  def organization_params
    params.require(:organization).permit(:name, :url, :logo, :description, :email, :phone)
  end
end
