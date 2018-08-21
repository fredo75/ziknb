class DashboardsController < ApplicationController

  def dashboard_home
    @user = current_user
  end


end
