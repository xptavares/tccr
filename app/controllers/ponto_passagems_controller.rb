class PontoPassagemsController < ApplicationController
  before_action :set_ponto_passagem, only: [:show, :edit, :update, :destroy]

  # GET /ponto_passagems
  # GET /ponto_passagems.json
  def index
    @ponto_passagems = PontoPassagem.all
  end

  # GET /ponto_passagems/1
  # GET /ponto_passagems/1.json
  def show
  end

  # GET /ponto_passagems/new
  def new
    @ponto_passagem = PontoPassagem.new
  end

  # GET /ponto_passagems/1/edit
  def edit
  end

  # POST /ponto_passagems
  # POST /ponto_passagems.json
  def create
    @ponto_passagem = PontoPassagem.new(ponto_passagem_params)

    respond_to do |format|
      if @ponto_passagem.save
        format.html { redirect_to @ponto_passagem, notice: 'Ponto passagem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ponto_passagem }
      else
        format.html { render action: 'new' }
        format.json { render json: @ponto_passagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ponto_passagems/1
  # PATCH/PUT /ponto_passagems/1.json
  def update
    respond_to do |format|
      if @ponto_passagem.update(ponto_passagem_params)
        format.html { redirect_to @ponto_passagem, notice: 'Ponto passagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ponto_passagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponto_passagems/1
  # DELETE /ponto_passagems/1.json
  def destroy
    @ponto_passagem.destroy
    respond_to do |format|
      format.html { redirect_to ponto_passagems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ponto_passagem
      @ponto_passagem = PontoPassagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ponto_passagem_params
      params.require(:ponto_passagem).permit(:rot_id, :ponto_id)
    end
end
