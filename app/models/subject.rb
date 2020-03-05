class Subject < ApplicationRecord
  validates :title, :code, :hour, :campus_id, :credits, :teacher_name, :faculty, presence: true
end
