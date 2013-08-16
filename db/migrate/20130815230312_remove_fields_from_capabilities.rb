class RemoveFieldsFromCapabilities < ActiveRecord::Migration
  def change
  	change_table :capabilities do |t|
  		t.remove :capability_type_id
    	t.remove :capability_type_type
  	end
  end
end
