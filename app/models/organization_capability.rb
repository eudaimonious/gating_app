class OrganizationCapability < ActiveRecord::Base
	belongs_to :organization
	belongs_to :capability
 end
