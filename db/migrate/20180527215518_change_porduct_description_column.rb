class ChangePorductDescriptionColumn < ActiveRecord::Migration
  def up
    change_column :products, :product_description, :text, :null => false, :limit => 300
  end

  def down
    change_column :products, :product_description, :text,  :null => false, :limit => 50
  end

end
