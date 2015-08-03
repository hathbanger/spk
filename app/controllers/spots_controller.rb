class SpotsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @spots = Spot.all
    respond_with(@spots)
  end

  def show
    @tricks = Trick.where(spot_id: @spot)
    respond_with(@spot)
  end

  def new
    @spot = Spot.new
    respond_with(@spot)
  end

  def edit
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    respond_with(@spot)
  end

  def update
    @spot.update(spot_params)
    respond_with(@spot)
  end

  def destroy
    @spot.destroy
    respond_with(@spot)
  end

  private
    def set_spot
      @spot = Spot.find(params[:id])
    end

    def spot_params
      params.require(:spot).permit(:title, :description, :street, :city, :state, :zipcode, :lati, :long, :longitude, :latitude, :location)
    end
end
