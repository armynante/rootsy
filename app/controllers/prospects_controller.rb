class ProspectsController < ApplicationController
  before_action :set_prospect, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @prospects = Prospect.all
    respond_with(@prospects)
  end

  def show
    respond_with(@prospect)
  end

  def new
    @prospect = Prospect.new
    respond_with(@prospect)
  end

  def edit
  end

  def create
    @prospect = Prospect.new(prospect_params)
    @prospect.save
    respond_with(@prospect)
  end

  def update
    @prospect.update(prospect_params)
    respond_with(@prospect)
  end

  def destroy
    @prospect.destroy
    respond_with(@prospect)
  end

  private
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    def prospect_params
      params.require(:prospect).permit(:name, :first_name, :industry, :image_url, :linkedin_profile_url, :job_description, :location, :email, :user_id, :a)
    end
end
