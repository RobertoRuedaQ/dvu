class DataController < ApplicationController
  def index
    @activities = Activity.activities_of_the_month.order(:start_date).to_a
    @all_participants = Activity.all_participants.to_s
    @uniq_participants_count = Activity.uniq_participants.count
  end
end
