class Activity < ApplicationRecord
  belongs_to :campus
  belongs_to :place
  belongs_to :type
  belongs_to :area
  belongs_to :subarea
  belongs_to :action
  belongs_to :program
  belongs_to :subprogram
  belongs_to :user
  has_one :report
  has_many :expenses

  validates :type_id,:activity_name, :start_date, :end_date, :campus_id, :place_id, :area_id, :subarea_id, :action_id, :program_id, :subprogram_id, :user_id, presence: true


  VALID_PARTICIPANT_REGEX = /^\d{7,10}$/
  AUDIENCE = [["Estudiantes","Estudiantes"],["Administrativos","Administrativos"],["Docentes","Docentes"],["Egresados","Egresados"],["Externos","Externos"],["Comunidad Educativa","Comunidad educativa"],["Comunidad general","Comunidad general"]]
  COMUNICATION = [["Pieza para redes","Pieza para redes"],["Póster","Póster"],["Banner para correo","Banner para correo"],["Video para pantallas","Video para pantallas"],["Correo masivo","Correo masivo"],["Volantes","Volantes"],["Registro fotográfico","Registro fotográfico"]]


  scope :activities_of_the_month, -> {where("EXTRACT(MONTH FROM start_date) = ?", DateTime.now.month).select(:activity_name, :start_date, :user_id) }
  scope :activities_of_the_week, -> {where("start_date BETWEEN ? AND ?", DateTime.now, DateTime.now + 5.day).select(:activity_name, :start_date)}
  scope :own_activities, -> (user){where("user_id = ?", user.id)}
  scope :filter_by_area_id, -> (area_id){where("area_id = ?", area_id)}
  scope :filter_by_type_id, -> (type_id){where("type_id = ?", type_id)}
  scope :filter_by_program_id, -> (program_id){where("program_id = ?", program_id)}
  scope :filter_by_month, -> (month){where("EXTRACT(MONTH FROM start_date) = ?", month)}

  def self.total_activities
    count
  end

  def self.all_participants
    @@participants_total = []
    all.each do |p|
      @@participants_total << p.participants.count
    end
    @@participants_total.reduce(:+)
  end

  def self.uniq_participants
    @@uniq_participants = []
    all.each do |p|
      @@uniq_participants << p.participants
    end
    @@uniq_participants.flatten!.uniq!
  end

  def self.participants_per_activity
    participants_per_activity = []
    all.each do |activity|
      unless activity.participants.empty?
        participants_per_activity << activity
      end 
      participants_per_activity
    end
  end


  def expenses_of_activity
    exp = []
    expenses.each do |e|
      exp << e.amount   
    end
    exp.reduce(:+)
  end
end
