class ParticipantsController < ApplicationController
  def index
    @participants = Activity.uniq_participants.sort
  end
end
