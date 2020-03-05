class Subprogram < ApplicationRecord
  validates :subprogram_name, :subprogram_code, :program_id, presence: true
  validates_associated :program
  belongs_to :program
end
