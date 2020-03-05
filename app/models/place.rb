class Place < ApplicationRecord
  belongs_to :campus
  validates :place_name, :capacity, :campus_id, presence: true
end
