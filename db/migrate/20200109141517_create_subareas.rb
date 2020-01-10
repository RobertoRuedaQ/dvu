class CreateSubareas < ActiveRecord::Migration[6.0]
  def change
    create_table :subareas do |t|
      t.string :subarea_name
      t.string :subarea_code
      t.references :area

      t.timestamps
    end
  end
end
