class Report < ApplicationRecord
  belongs_to :activity
  validates :objetive, :participants, :description, :commitment, :activity_id, presence: true
end
