class ParticipantsController < ApplicationController
  def index
    @participants = Activity.uniq_participants.sort
    @participants_per_activity = Activity.participants_per_activity
  end
end
