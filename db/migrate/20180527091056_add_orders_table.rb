class AddOrdersTable < ActiveRecord::Migration
  def up
    create_table :orders do |t|
      t.references :user, index: true
      t.references :product, index: true
      t.integer :total_price, null: false
      t.integer :quantity, null: false
      t.timestamps
    end

    create_table :user_addresses do |t|
      t.references :user, index: true
      t.string :address
      t.string :country
      t.string :code
      t.timestamps
    end
  end

  def down
    drop_table :orders
    drop_table :user_addresses
  end
end
