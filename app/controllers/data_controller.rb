class DataController < ApplicationController
  def index
    @activities = Activity.activities_of_the_month.to_a
  end
end
