class AddComunicationToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :comunication, :text, array: true, default: []
  end
end
