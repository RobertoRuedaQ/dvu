class ActivitiesController < ApplicationController
  before_action :authenticate_user!, only: [:index,:show, :edit, :update, :destroy]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
    set_expenses
  end

  def new
    @activity = Activity.new
    load_select_values
  end

  def edit
    load_select_values
  end

  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Una nueva actividad ha sido creada.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'La actividad ha sido actualizada.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'La actividad ha sido eliminada.' }
      format.json { head :no_content }
    end
  end

  def participants
    @activity = Activity.find(params[:activity][:id])
    if valid_participant?(params[:activity][:participants]) 
      @activity.participants << (params[:activity][:participants])
      @activity.participants.uniq!
      @activity.save
      redirect_to @activity, notice: "Participante añadido exitosamente"
    else
      redirect_to @activity, notice: 'Participante no válido'
    end
  end

  def delete_participants
    @activity = Activity.find(params[:activity_id])
    @activity.participants.delete(params[:participant])
    @activity.save
    redirect_to @activity, notice: "Participante retirado"
  end

  def pdf
    @activity = Activity.find(params[:activity_id])
    set_expenses
  end

  def convert
    _url = request.base_url + activity_pdf_path
  	_pdf = Dhalang::PDF.get_from_url(_url)
  	_file_name = "Report" 
    File.open("#{Rails.root}/public/#{_file_name}.pdf", "w+b") << _pdf
	redirect_to "/#{_file_name}.pdf"
  end

  private
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def load_select_values
      @type = Type.all
      @campus = Campus.all
      @area = Area.all
      @action = Action.all
      @program = Program.all
      @places = Place.all
    end

    def set_expenses
      @expenses = @activity.expenses
      @total_expenses_by_activity = @activity.expenses_of_activity
    end

    def valid_participant?(participant)
      participant.present? &&  (participant =~ Activity::VALID_PARTICIPANT_REGEX)
    end

    def activity_params
      params.require(:activity).permit(:type_id,:activity_name, :start_date, :end_date, :campus_id, :place_id, :area_id, :subarea_id, :action_id, :program_id, :subprogram_id, :participants, :user_id)
    end

    def filtering_params(params)
      params.slice(:type, :area, :program)
    end
end
