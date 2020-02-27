class Area < ApplicationRecord
  has_many :subareas, dependent: :destroy
end
