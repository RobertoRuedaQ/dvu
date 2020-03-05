class Area < ApplicationRecord
  validates :area_name, :area_code, presence: true
  validates :area_code, uniqueness: true
  has_many :subareas, dependent: :destroy
end
