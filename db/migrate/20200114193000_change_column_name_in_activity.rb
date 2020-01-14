class ChangeColumnNameInActivity < ActiveRecord::Migration[6.0]
  def change
    rename_column :activities, :campu_id, :campus_id
  end
end
