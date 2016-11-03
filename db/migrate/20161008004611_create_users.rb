class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :first_name
      t.string :last_name
      t.string :mail_address
      t.string :status

      t.timestamps null: false
    end
  end
end
