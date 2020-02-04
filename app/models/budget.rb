class Budget < ApplicationRecord
  has_many :expenses
  has_many :sender_transfers, :class_name => "Transfer", :foreign_key => "sender_id"
  has_many :receiver_transfers, :class_name => "Transfer", :foreign_key => "receiver_id"

  def self.total_budget
    pluck(:amount).reduce(:+)
  end
end
