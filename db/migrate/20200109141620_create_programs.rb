class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :program_name
      t.string :program_code

      t.timestamps
    end
  end
end
