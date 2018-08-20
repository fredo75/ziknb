class PagesController < ApplicationController

<<<<<<< HEAD
<<<<<<< HEAD
=======
  skip_before_action :authenticate_user!, only: :home

>>>>>>> master
=======
  skip_before_action :authenticate_user!, only: :home
>>>>>>> master
  def home
  end
end
