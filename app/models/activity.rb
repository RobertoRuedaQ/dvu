class Activity < ApplicationRecord
  validates_presence_of :type_id,:activity_name, :start_date, :end_date, :campus_id, :place_id, :area_id, :subarea_id, :action_id, :program_id, :subprogram_id, presence: true
  belongs_to :campus
  belongs_to :place
  belongs_to :type
  belongs_to :area
  belongs_to :subarea
  belongs_to :action
  belongs_to :program
  belongs_to :subprogram

  has_many :expenses

  def self.total_activities
    count
  end

  def self.next_activities
    where("start_date > ?", Time.now).select(:activity_name, :start_date).to_a
  end
end
