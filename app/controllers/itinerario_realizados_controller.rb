class ItinerarioRealizadosController < ApplicationController
  before_action :set_itinerario_realizado, only: [:show, :edit, :update, :destroy]

  # GET /itinerario_realizados
  # GET /itinerario_realizados.json
  def index
    @itinerario_realizados = ItinerarioRealizado.all
  end

  # GET /itinerario_realizados/1
  # GET /itinerario_realizados/1.json
  def show
  end

  # GET /itinerario_realizados/new
  def new
    @itinerario_realizado = ItinerarioRealizado.new
  end

  # GET /itinerario_realizados/1/edit
  def edit
  end

  # POST /itinerario_realizados
  # POST /itinerario_realizados.json
  def create
    @itinerario_realizado = ItinerarioRealizado.new(itinerario_realizado_params)

    respond_to do |format|
      if @itinerario_realizado.save
        format.html { redirect_to @itinerario_realizado, notice: 'Itinerario realizado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @itinerario_realizado }
      else
        format.html { render action: 'new' }
        format.json { render json: @itinerario_realizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itinerario_realizados/1
  # PATCH/PUT /itinerario_realizados/1.json
  def update
    respond_to do |format|
      if @itinerario_realizado.update(itinerario_realizado_params)
        format.html { redirect_to @itinerario_realizado, notice: 'Itinerario realizado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @itinerario_realizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itinerario_realizados/1
  # DELETE /itinerario_realizados/1.json
  def destroy
    @itinerario_realizado.destroy
    respond_to do |format|
      format.html { redirect_to itinerario_realizados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerario_realizado
      @itinerario_realizado = ItinerarioRealizado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itinerario_realizado_params
      params.require(:itinerario_realizado).permit(:latitudo, :longitude, :date, :viagem_id)
    end
end
