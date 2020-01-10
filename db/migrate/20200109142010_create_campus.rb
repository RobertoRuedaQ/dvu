class CreateCampus < ActiveRecord::Migration[6.0]
  def change
    create_table :campus do |t|
      t.string :campus_name
      t.string :campus_code

      t.timestamps
    end
  end
end
