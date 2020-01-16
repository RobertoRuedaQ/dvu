class Budget < ApplicationRecord
  has_many :expenses

  def self.total_budget
    pluck(:amount).reduce(:+)
  end
end
