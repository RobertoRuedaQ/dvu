class Type < ApplicationRecord
  has_many :activities, dependent: :destroy
end
