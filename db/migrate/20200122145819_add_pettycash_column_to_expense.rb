class AddPettycashColumnToExpense < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :petty_cash?, :boolean, default: false
  end
end
