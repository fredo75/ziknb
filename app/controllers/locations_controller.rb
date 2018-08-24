class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    authorize @location

  end

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @location = Location.new
    authorize @location
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @location = Location.new(location_params)
    @location.user = current_user
    authorize @location
    @location.instrument = @instrument
    authorize @location
    if @location.save
      redirect_to instrument_location_path(@instrument, @location)
    else
      render :new
    end

  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    authorize @location
    redirect_to dashboards_path
  end


  private
  def location_params
    params.require(:location).permit(:start_date, :end_date, :id, :instrument_id, :date)
  end

end
