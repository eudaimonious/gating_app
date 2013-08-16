class Setboolean < ActiveRecord::Base
  has_many :capability_settings, as: :settings
  has_many :capabilities, through: :capability_settings
  attr_accessible :value
end
