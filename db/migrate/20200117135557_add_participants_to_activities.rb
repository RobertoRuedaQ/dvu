class AddParticipantsToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :participants, :text, array: true, default: []
  end
end
