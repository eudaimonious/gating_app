class CapabilityTypeBool < ActiveRecord::Base
  has_one :capability, as: :capability_type
  attr_accessible :value
end
