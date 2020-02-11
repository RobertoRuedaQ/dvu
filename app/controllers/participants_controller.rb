class ParticipantsController < ApplicationController
  def index
    @participants = Activity.uniq_participants
  end
end
