class LocationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @location = Location.new
    authorize @instrument
  end

  def create
  end

  def destroy
  end
end
