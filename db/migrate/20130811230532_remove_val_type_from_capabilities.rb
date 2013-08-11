class RemoveValTypeFromCapabilities < ActiveRecord::Migration
  def change
  	change_table :capabilities do |t|
      t.remove :val_type
     end
  end
end
