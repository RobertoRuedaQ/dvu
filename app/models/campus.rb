class Campus < ApplicationRecord
 has_many :places, dependent: :destroy
end
