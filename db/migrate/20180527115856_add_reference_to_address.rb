class AddReferenceToAddress < ActiveRecord::Migration
  def up
    remove_column :users, :address
  end

  def down
    remove_reference :users, :user_addresses
    add_column :users, :address, :text
  end
end
