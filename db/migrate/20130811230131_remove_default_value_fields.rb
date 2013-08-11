class RemoveDefaultValueFields < ActiveRecord::Migration
  def change
  	change_table :capabilities do |t|
      t.remove :default_val_bool
      t.remove :default_val_str
      t.remove :default_val_num
      t.remove :val_type
     end
  end
end
