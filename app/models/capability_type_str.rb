class CapabilityTypeStr < ActiveRecord::Base
  has_one :capabilities, as: :capability_types
end
