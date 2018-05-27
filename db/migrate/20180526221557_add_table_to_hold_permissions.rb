class AddTableToHoldPermissions < ActiveRecord::Migration
  def up
    create_table :sensitive_models do |t|
      t.string :name, null: false, limit: 50
      t.timestamps
    end

    create_table :user_permissions do |t|
      t.string :username, null: false, limit: 50
      t.string :sensitive_model_name, null: false, limit: 50
      t.boolean :allow_write, null: false, default: false
      t.boolean :allow_read, null: false, default: false
    end
  end

  def down
    drop_table :sensitive_models
    drop_table :user_permissions
  end
end
