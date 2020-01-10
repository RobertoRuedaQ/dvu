class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.datetime :start_date
      t.datetime :end_date
      t.references :campu, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true
      t.references :subarea, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true
      t.references :program, null: false, foreign_key: true
      t.references :subprogram, null: false, foreign_key: true

      t.timestamps
    end
  end
end
