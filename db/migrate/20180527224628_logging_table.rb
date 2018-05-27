class LoggingTable < ActiveRecord::Migration
  def up
    create_table :model_accesses do |t|
      t.string :username, null: false, limit: 50
      t.string :model, null: false, limit: 50
      t.string :time, null: false
    end
  end

  def down
    drop_table :model_accesses
  end
end
