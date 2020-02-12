class CampusController < ApplicationController
  before_action :authenticate_user!
  before_action :set_campus, only: [:show, :edit, :update, :destroy]

  # GET /campus
  # GET /campus.json
  def index
    @campus = Campus.all
  end

  # GET /campus/1
  # GET /campus/1.json
  def show
  end

  # GET /campus/new
  def new
    @campus = Campus.new
  end

  # GET /campus/1/edit
  def edit
  end

  # POST /campus
  # POST /campus.json
  def create
    @campus = Campus.new(campus_params)

    respond_to do |format|
      if @campus.save
        format.html { redirect_to @campus, notice: 'Una nueva sede a sido creada.' }
        format.json { render :show, status: :created, location: @campus }
      else
        format.html { render :new }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campus/1
  # PATCH/PUT /campus/1.json
  def update
    respond_to do |format|
      if @campus.update(campus_params)
        format.html { redirect_to @campu, notice: 'La Sede ha sido actualizada.' }
        format.json { render :show, status: :ok, location: @campus }
      else
        format.html { render :edit }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus/1
  # DELETE /campus/1.json
  def destroy
    @campus.destroy
    respond_to do |format|
      format.html { redirect_to campus_url, notice: 'La sede ha sido eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campus
      @campus = Campus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campus_params
      params.require(:campus).permit(:campus_name, :campus_code)
    end
end
