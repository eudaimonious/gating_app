class OrganizationsCapability < ActiveRecord::Base
	attr_accessible :capability_id, :organization_id
	belongs_to :organization
	belongs_to :capability
 end
