class DataController < ApplicationController
  def index
    @activities = Activity.activities_of_the_month.to_a
    @all_participants = Activity.all_participants.to_s
  end
end
