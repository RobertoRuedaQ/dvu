class SubprogramsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_subprogram, only: [:show, :edit, :update, :destroy]
  before_action :set_program, only: [:new, :edit]
  # GET /subprograms
  # GET /subprograms.json
  def index
    @subprograms = Subprogram.all
  end

  # GET /subprograms/1
  # GET /subprograms/1.json
  def show
  end

  # GET /subprograms/new
  def new
    @subprogram = Subprogram.new
  end

  # GET /subprograms/1/edit
  def edit
  end

  # POST /subprograms
  # POST /subprograms.json
  def create
    @subprogram = Subprogram.new(subprogram_params)

    respond_to do |format|
      if @subprogram.save
        format.html { redirect_to @subprogram, notice: 'SUn nuevo subprograma ha sido creado.' }
        format.json { render :show, status: :created, location: @subprogram }
      else
        format.html { render :new }
        format.json { render json: @subprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subprograms/1
  # PATCH/PUT /subprograms/1.json
  def update
    respond_to do |format|
      if @subprogram.update(subprogram_params)
        format.html { redirect_to @subprogram, notice: 'El subprograma se ha actualizado.' }
        format.json { render :show, status: :ok, location: @subprogram }
      else
        format.html { render :edit }
        format.json { render json: @subprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subprograms/1
  # DELETE /subprograms/1.json
  def destroy
    @subprogram.destroy
    respond_to do |format|
      format.html { redirect_to subprograms_url, notice: 'El subprograma ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subprogram
      @subprogram = Subprogram.find(params[:id])
    end

    def set_program
       @program = Program.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subprogram_params
      params.require(:subprogram).permit(:subprogram_name, :subprogram_code, :program_id)
    end
end
