class Subarea < ApplicationRecord
belongs_to :area
validates_associated :area
validates :subarea_name, :subarea_code, presence: true
end
