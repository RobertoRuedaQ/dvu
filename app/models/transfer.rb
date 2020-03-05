class Transfer < ApplicationRecord
  belongs_to :sender, :class_name => "Budget"
  belongs_to :receiver, :class_name => "Budget"
  validates :amount, :description, :sender_id, :receiver_id, :date, presence: true
end
