class AddColumnReportToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :report, :boolean, default: false
  end
end
