class DatospersController < ApplicationController
  before_action :set_datosper, only: [:show, :edit, :update, :destroy]

  # GET /datospers
  # GET /datospers.json
  def index
    @datospers = Datosper.all
  end

  # GET /datospers/1
  # GET /datospers/1.json
  def show
  end

  # GET /datospers/new
  def new
    @datosper = Datosper.new
  end

  # GET /datospers/1/edit
  def edit
  end

  # POST /datospers
  # POST /datospers.json
  def create
    @datosper = Datosper.new(datosper_params)

    respond_to do |format|
      if @datosper.save
        format.html { redirect_to @datosper, notice: 'Datosper was successfully created.' }
        format.json { render :show, status: :created, location: @datosper }
      else
        format.html { render :new }
        format.json { render json: @datosper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datospers/1
  # PATCH/PUT /datospers/1.json
  def update
    respond_to do |format|
      if @datosper.update(datosper_params)
        format.html { redirect_to @datosper, notice: 'Datosper was successfully updated.' }
        format.json { render :show, status: :ok, location: @datosper }
      else
        format.html { render :edit }
        format.json { render json: @datosper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datospers/1
  # DELETE /datospers/1.json
  def destroy
    @datosper.destroy
    respond_to do |format|
      format.html { redirect_to datospers_url, notice: 'Datosper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datosper
      @datosper = Datosper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datosper_params
      params.require(:datosper).permit(:docum, :apellido, :nombres)
    end
end
