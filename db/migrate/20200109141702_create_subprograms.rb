class CreateSubprograms < ActiveRecord::Migration[6.0]
  def change
    create_table :subprograms do |t|
      t.string :subprogram_name
      t.string :subprogram_code
      t.references :program

      t.timestamps
    end
  end
end
