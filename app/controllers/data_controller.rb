class DataController < ApplicationController
  def index
    @activities = Activity.next_activities
  end
end
