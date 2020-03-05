class Campus < ApplicationRecord
 has_many :places, dependent: :destroy
 validates :campus_name, :campus_code, presence: true
end
