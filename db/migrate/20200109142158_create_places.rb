class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :place_name
      t.integer :capacity
      t.references :campus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
