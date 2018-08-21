class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @location = Location.new
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @location = Location.new(location_params)
    if @location.save
      redirect_to new_location_path(@location)
    else
      render 'index'
    end
  end

  def destroy
  end
end

private
def location_params
  params.require(:location).permit(:date)
end
