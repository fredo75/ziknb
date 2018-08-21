class InstrumentsController < ApplicationController
  def index
    @instruments = policy_scope(Instrument)
    # authorize @instruments
  end

  def show
    @instrument = Instrument.find(params[:id])
    authorize @instrument
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
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
    authorize @instrument
  end

  def update
    authorize @instrument
  end

  def edit
    authorize @instrument
  end

  private

 def instruments_params
    params.require(:instrument).permit(:title, :description, :marque, :photo )
  end


end
