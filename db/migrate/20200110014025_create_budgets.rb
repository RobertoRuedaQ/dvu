class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :item
      t.string :account
      t.string :source
      t.string :department
      t.integer :amount

      t.timestamps
    end
  end
end
