class AddNewTable < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :product_description, null: false, limit: 50
      t.string :product_code, null: false, limit: 50
      t.integer :price, null: false
      t.integer :availability, null: false
      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
