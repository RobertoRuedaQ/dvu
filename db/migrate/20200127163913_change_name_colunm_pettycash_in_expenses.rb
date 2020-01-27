class ChangeNameColunmPettycashInExpenses < ActiveRecord::Migration[6.0]
  def change
    rename_column :expenses, :petty_cash?, :petty_cash
  end
end
