class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.text :objetive
      t.text :participants
      t.text :description
      t.text :commitment
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
