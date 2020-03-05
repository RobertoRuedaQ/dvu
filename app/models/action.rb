class Action < ApplicationRecord
  validates :action_name, :code, presence: true
  validates :code, uniqueness: true
end
