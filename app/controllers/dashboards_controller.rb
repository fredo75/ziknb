class DashboardsController < ApplicationController

  def dashboard_home
    @user = current_user
    authorize @user
    @locations = @user.locations
    @instruments = @user.instruments
    @instrument = Instrument.new
  end
end
