class Program < ApplicationRecord
  has_many :subprograms, dependent: :destroy
  validates :program_name, :program_code, presence: true
end
