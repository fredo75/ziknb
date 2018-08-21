class DashboardsController < ApplicationController

  def dashboard_home
    @user = current_user
    authorize @user
  end
end
