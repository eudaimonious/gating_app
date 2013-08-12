class Organization < ActiveRecord::Base
  attr_accessible :full_name, :slug, :users, :capabilities_attributes, :organizations_capabilities_attributes
  has_many :organizations_capabilities
  has_many :capabilities, :through => :organizations_capabilities
  accepts_nested_attributes_for :capabilities
  accepts_nested_attributes_for :organizations_capabilities, :allow_destroy => true
end
