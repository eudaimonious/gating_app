class AddCapabilityTypeToCapabilitiesTable < ActiveRecord::Migration
  def up
  	change_table :capabilities do |t|
  		t.references :capability_type, polymorphic: true
  	end
  end

  def down
  	change_table :capabilities do |t|
  		t.remove_references :capability_type, polymorphic: true
  	end
  end
end
