class AddAudienceToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :audiences, :text, array: true, default: []
  end
end
