class CreateJoinTableOrganizationCapability < ActiveRecord::Migration
	def change
		create_table :organizations_capabilities, :id => false do |t|
	  		t.references :organization, :null => false
	  		t.references :capability, :null => false
		end

		add_index(:organizations_capabilities, [:organization_id, :capability_id], :unique => true, :name => "organization_capability_index")
	end
end
