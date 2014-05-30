class RotsController < ApplicationController
  before_action :set_rot, only: [:show, :edit, :update, :destroy]

  # GET /rots
  # GET /rots.json
  def index
    @rots = Rot.all
  end

  # GET /rots/1
  # GET /rots/1.json
  def show
  end

  # GET /rots/new
  def new
    @rot = Rot.new
  end

  # GET /rots/1/edit
  def edit
  end

  # POST /rots
  # POST /rots.json
  def create
    @rot = Rot.new(rot_params)

    respond_to do |format|
      if @rot.save
        format.html { redirect_to @rot, notice: 'Rot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rot }
      else
        format.html { render action: 'new' }
        format.json { render json: @rot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rots/1
  # PATCH/PUT /rots/1.json
  def update
    respond_to do |format|
      if @rot.update(rot_params)
        format.html { redirect_to @rot, notice: 'Rot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rots/1
  # DELETE /rots/1.json
  def destroy
    @rot.destroy
    respond_to do |format|
      format.html { redirect_to rots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rot
      @rot = Rot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rot_params
      params.require(:rot).permit(:nome, :origem, :destino, ponto_passagem_attributes:[:ponto])
    end
end
