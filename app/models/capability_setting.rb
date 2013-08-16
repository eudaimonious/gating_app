class CapabilitySetting < ActiveRecord::Base
	belongs_to :capability
	belongs_to :setting, polymorphic: true

	validates_uniqueness_of :capability_id
end