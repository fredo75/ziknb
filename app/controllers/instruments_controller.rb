class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instruments_params)
    @instrument.user = current_user
    @instrument.save!
    if @instrument.save
      redirect_to instruments_path
    else
      flash.now[:error] = "Something is wrong! try again"
      render :new
    end
  end

  def update
  end

  def edit
  end

  private

 def instruments_params
    params.require(:instrument).permit(:title, :description, :marque, :photo )
  end


end
