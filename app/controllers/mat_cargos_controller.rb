class MatCargosController < ApplicationController
  before_action :set_mat_cargo, only: [:show, :edit, :update, :destroy]

  # GET /mat_cargos
  # GET /mat_cargos.json
  def index
    @mat_cargos = MatCargo.all
  end

  # GET /mat_cargos/1
  # GET /mat_cargos/1.json
  def show
  end

  # GET /mat_cargos/new
  def new
    @mat_cargo = MatCargo.new
  end

  # GET /mat_cargos/1/edit
  def edit
  end

  # POST /mat_cargos
  # POST /mat_cargos.json
  def create
    @mat_cargo = MatCargo.new(mat_cargo_params)

    respond_to do |format|
      if @mat_cargo.save
        format.html { redirect_to @mat_cargo, notice: 'Mat cargo was successfully created.' }
        format.json { render :show, status: :created, location: @mat_cargo }
      else
        format.html { render :new }
        format.json { render json: @mat_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mat_cargos/1
  # PATCH/PUT /mat_cargos/1.json
  def update
    respond_to do |format|
      if @mat_cargo.update(mat_cargo_params)
        format.html { redirect_to @mat_cargo, notice: 'Mat cargo was successfully updated.' }
        format.json { render :show, status: :ok, location: @mat_cargo }
      else
        format.html { render :edit }
        format.json { render json: @mat_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mat_cargos/1
  # DELETE /mat_cargos/1.json
  def destroy
    @mat_cargo.destroy
    respond_to do |format|
      format.html { redirect_to mat_cargos_url, notice: 'Mat cargo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mat_cargo
      @mat_cargo = MatCargo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mat_cargo_params
      params.require(:mat_cargo).permit(:nombre, :escuela)
    end
end
