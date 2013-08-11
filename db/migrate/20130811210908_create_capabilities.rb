class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.string :name
      t.string :key
      t.datetime :expiry_date
      t.boolean :default_val_bool
      t.string :default_val_str
      t.integer :default_val_num
      t.string :val_type
      t.references :user

      t.timestamps
    end
    add_index :capabilities, :user_id
  end
end
