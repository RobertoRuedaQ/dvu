require 'rails_helper'

RSpec.describe Activity
type: :model do
  it {should validate_presence_of(:type_id)}
  it {should validate_presence_of(:activity_name)}
  it {should validate_presence_of(:start_date)}
  it {should validate_presence_of(:end_date)}
  it {should validate_presence_of(:campus_id)}
  it {should validate_presence_of(:place_id)}
  it {should validate_presence_of(:area_id)}
  it {should validate_presence_of(:subarea_id)}
  it {should validate_presence_of(:action_id)}
  it {should validate_presence_of(:program_id)}
  it {should validate_presence_of(:subprogram_id)}
end
