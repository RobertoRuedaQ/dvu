class CreateTransfers < ActiveRecord::Migration[6.0]
  def change
    create_table :transfers do |t|
      t.integer :amount
      t.text :description
      t.references :sender, null: false
      t.references :receiver, null: false
      t.date :date

      t.timestamps
    end
  end
end
