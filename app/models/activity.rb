class Activity < ApplicationRecord
  belongs_to :campus
  belongs_to :place
  belongs_to :type
  belongs_to :area
  belongs_to :subarea
  belongs_to :action
  belongs_to :program
  belongs_to :subprogram

  has_many :expenses
end
