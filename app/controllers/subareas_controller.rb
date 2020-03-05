class SubareasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_subarea, only: [:show, :edit, :update, :destroy]
  before_action :set_area, only: [:new,:create, :edit, :update]
  # GET /subareas
  # GET /subareas.json
  def index
    @subareas = Subarea.all
  end

  # GET /subareas/1
  # GET /subareas/1.json
  def show
  end

  # GET /subareas/new
  def new
    @subarea = Subarea.new
  end

  # GET /subareas/1/edit
  def edit
  end

  # POST /subareas
  # POST /subareas.json
  def create
    @subarea = Subarea.new(subarea_params)

    respond_to do |format|
      if @subarea.save
        format.html { redirect_to @subarea, notice: 'Una nueva subárea ha sido creada.' }
        format.json { render :show, status: :created, location: @subarea }
      else
        format.html { render :new }
        format.json { render json: @subarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subareas/1
  # PATCH/PUT /subareas/1.json
  def update
    respond_to do |format|
      if @subarea.update(subarea_params)
        format.html { redirect_to @subarea, notice: 'La Subárea ha sido actualizada.' }
        format.json { render :show, status: :ok, location: @subarea }
      else
        format.html { render :edit }
        format.json { render json: @subarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subareas/1
  # DELETE /subareas/1.json
  def destroy
    @subarea.destroy
    respond_to do |format|
      format.html { redirect_to subareas_url, notice: 'La subárea ha sido eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subarea
      @subarea = Subarea.find(params[:id])
    end

    def set_area
      @area = Area.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subarea_params
      params.require(:subarea).permit(:subarea_name, :subarea_code, :area_id)
    end
end
