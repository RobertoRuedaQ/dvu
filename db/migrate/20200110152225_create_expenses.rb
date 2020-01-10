class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :expense_type
      t.string :client_type
      t.string :name
      t.string :bill_number
      t.string :siaf_code
      t.integer :amount
      t.references :budget
      t.text :description
      t.datetime :date
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
