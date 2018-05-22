class AddUsersModel < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.string :surname, null: false, limit: 50
      t.text :address
      t.string :phone_number, null: false, limit: 20
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
