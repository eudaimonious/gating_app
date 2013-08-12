class CapabilityTypeNum < ActiveRecord::Base
  has_one :capabilities, as: :capability_types
end
