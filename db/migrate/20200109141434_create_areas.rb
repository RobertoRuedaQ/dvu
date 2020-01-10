class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :area_name
      t.string :area_code

      t.timestamps
    end
  end
end
