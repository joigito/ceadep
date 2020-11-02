class PuntajesController < ApplicationController
  before_action :set_puntaje, only: [:show, :edit, :update, :destroy]

  # GET /puntajes
  # GET /puntajes.json
  def index
    @puntajes = Puntaje.all
  end

  # GET /puntajes/1
  # GET /puntajes/1.json
  def show
  end

  # GET /puntajes/new
  def new
    @puntaje = Puntaje.new
  end

  # GET /puntajes/1/edit
  def edit
  end

  # POST /puntajes
  # POST /puntajes.json
  def create
    @puntaje = Puntaje.new(puntaje_params)

    respond_to do |format|
      if @puntaje.save
        format.html { redirect_to @puntaje, notice: 'Puntaje was successfully created.' }
        format.json { render :show, status: :created, location: @puntaje }
      else
        format.html { render :new }
        format.json { render json: @puntaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puntajes/1
  # PATCH/PUT /puntajes/1.json
  def update
    respond_to do |format|
      if @puntaje.update(puntaje_params)
        format.html { redirect_to @puntaje, notice: 'Puntaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @puntaje }
      else
        format.html { render :edit }
        format.json { render json: @puntaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puntajes/1
  # DELETE /puntajes/1.json
  def destroy
    @puntaje.destroy
    respond_to do |format|
      format.html { redirect_to puntajes_url, notice: 'Puntaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puntaje
      @puntaje = Puntaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def puntaje_params
      params.require(:puntaje).permit(:datosper_id, :titulo, :antig_tit, :antig_doc, :concepto, :prom_tit, :public, :becas_otros, :concursos, :antec_doc, :red_fed)
    end
end
