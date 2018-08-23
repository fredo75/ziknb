class InstrumentsController < ApplicationController
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
    @instrument = Instrument.find(params[:id])
    authorize @instrument


  end

  def new
    @instrument = Instrument.new
    authorize @instrument
    @instruments = Instrument.where.not(latitude: nil, longitude: nil)
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
    authorize @instrument
  end

  def edit
    authorize @instrument
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    authorize @instrument
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

end


