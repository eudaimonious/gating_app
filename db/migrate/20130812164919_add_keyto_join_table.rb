class AddKeytoJoinTable < ActiveRecord::Migration
	def self.up
	add_column :organizations_capabilities, :id, :primary_key
	end

	def self.down
	remove_column :organizations_capabilities, :id
	end
end
