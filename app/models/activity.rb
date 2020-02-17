class Activity < ApplicationRecord
  validates_presence_of :type_id,:activity_name, :start_date, :end_date, :campus_id, :place_id, :area_id, :subarea_id, :action_id, :program_id, :subprogram_id, :user_id, presence: true
  belongs_to :campus
  belongs_to :place
  belongs_to :type
  belongs_to :area
  belongs_to :subarea
  belongs_to :action
  belongs_to :program
  belongs_to :subprogram
  belongs_to :user

  has_many :expenses

  VALID_PARTICIPANT_REGEX = /^\d{7,10}$/

  def self.total_activities
    count
  end

  scope :activities_of_the_month, -> {where("EXTRACT(MONTH FROM start_date) = ?", DateTime.now.month).select(:activity_name, :start_date, :user_id) }

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
end
