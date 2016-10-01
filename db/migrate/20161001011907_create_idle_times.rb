class CreateIdleTimes < ActiveRecord::Migration
  def change
    create_table :idle_times do |t|
      t.string :day
      t.string :hour
      t.string :person_name
      t.string :idle_flag

      t.timestamps null: false
    end
  end
end
