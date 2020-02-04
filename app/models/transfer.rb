class Transfer < ApplicationRecord
  belongs_to :sender, :class_name => "Budget"
  belongs_to :receiver, :class_name => "Budget"
end
