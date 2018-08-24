class InstrumentsController < ApplicationController
  before_action :set_intrument, only: [:show, :edit, :update, :destroy]
  def index
    @instruments = policy_scope(Instrument)
    @instruments = Instrument.where.not(latitude: nil, longitude: nil)
    if params[:type].present?
      @instruments = Instrument.global_search(params[:type])
    else
      @instruments = Instrument.all
    end

    if params[:where].present?

      @instruments = @instruments.near(params[:where], 10)

    end

    if params[:when].present? # && @instruments.present
      # raise
      @instruments = @instruments.where(present: true)

    end

    @markers = @instruments.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude

        # infoWindow: { content: render_to_string(partial: "/instruments/map_box", locals: { flat: flat }) }
      }
    end
    authorize @instruments
  end

  def show
    @location = Location.new
    @rentings = Location.where(instrument_id: @instrument.id)
    @renting_dates = @rentings.map do |renting|
      {
        from: renting.start_date,
        to: renting.end_date
      }
    end
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
    @instruments = Instrument.where.not(latitude: nil, longitude: nil)
    @user = current_user
    @markers = @instruments.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude

        # infoWindow: { content: render_to_string(partial: "/instruments/map_box", locals: { flat: flat }) }
      }
    end

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

  end

  def edit

  end

  def destroy
    if @instrument.locations.empty?
      @instrument.destroy
      flash[:notice] = 'Instrument successfully destroyed'
    else
      flash[:alert] = 'This instrument has locations'
    end
    redirect_to dashboards_path
  end

  private

  def instruments_params
    params.require(:instrument).permit(:title, :description, :marque, :photo, :category, :address, :latitude, :longitude )
  end

  def set_intrument
    @instrument = Instrument.find(params[:id])
    authorize @instrument
  end

end


