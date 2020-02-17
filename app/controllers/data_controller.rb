class DataController < ApplicationController
  def index
    @activities = Activity.activities_of_the_month.to_a.sort!
    @all_participants = Activity.all_participants.to_s
    @uniq_participants_count = Activity.uniq_participants.count
  end
end
