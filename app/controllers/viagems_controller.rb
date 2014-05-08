class ViagemsController < ApplicationController
  before_action :set_viagem, only: [:show, :edit, :update, :destroy]

  # GET /veiculos/1/itinerario_realizados
  # GET /veiculos/1/itinerario_realizados.json
  def itinerario_realizados
    @itinerario_realizados = Viagem.find(params[:id]).itinerario_realizados
    render json: @itinerario_realizados
  end

  # GET /viagems
  # GET /viagems.json
  def index
    @viagems = Viagem.all
  end

  # GET /viagems/1
  # GET /viagems/1.json
  def show
  end

  # GET /viagems/new
  def new
    @viagem = Viagem.new
  end

  # GET /viagems/1/edit
  def edit
  end

  # POST /viagems
  # POST /viagems.json
  def create
    @viagem = Viagem.new(viagem_params)

    respond_to do |format|
      if @viagem.save
        format.html { redirect_to @viagem, notice: 'Viagem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @viagem }
      else
        format.html { render action: 'new' }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viagems/1
  # PATCH/PUT /viagems/1.json
  def update
    respond_to do |format|
      if @viagem.update(viagem_params)
        format.html { redirect_to @viagem, notice: 'Viagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viagems/1
  # DELETE /viagems/1.json
  def destroy
    @viagem.destroy
    respond_to do |format|
      format.html { redirect_to viagems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viagem
      @viagem = Viagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viagem_params
      params.require(:viagem).permit(:date, :rot_id, :veiculo_id)
    end
end
