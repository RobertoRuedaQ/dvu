class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :short
      t.string :code
      t.string :hour
      t.string :day
      t.string :classroom
      t.string :campus
      t.string :credits
      t.string :teacher_name
      t.string :faculty
      t.timestamps
    end
  end
end
