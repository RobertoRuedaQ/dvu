class Program < ApplicationRecord
  has_many :subprograms, dependent: :destroy
end
