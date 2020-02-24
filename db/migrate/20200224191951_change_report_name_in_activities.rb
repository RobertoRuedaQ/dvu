class ChangeReportNameInActivities < ActiveRecord::Migration[6.0]
  def change
    rename_column :activities, :report, :have_report
  end
end
