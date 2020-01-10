class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.string :action_name
      t.string :action_code

      t.timestamps
    end
  end
end
