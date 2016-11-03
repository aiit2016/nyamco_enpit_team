class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :lon
      t.string :lat
      t.datetime :datetime
      t.text :comment

      t.timestamps null: false
    end
  end
end
