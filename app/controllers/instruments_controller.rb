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
    authorize @instrument
  end

  def update
    authorize @instrument
  end

  def edit
    authorize @instrument
  end
end
