class InstrumentsController < ApplicationController
  def index
    @instruments = policy_scope(Instrument)
    @markers = @instruments.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude#,
        # infoWindow: { content: render_to_string(partial: "/instruments/map_box", locals: { flat: flat }) }
      }
     if params[:query].present?
      @instruments = Instrument.where(title: params[:query])
    else
      @instruments = Instrument.all
    end
     authorize @instruments
     @instruments = Instrument.where.not(latitude: nil, longitude: nil)


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


