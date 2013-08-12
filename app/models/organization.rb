class Organization < ActiveRecord::Base
  attr_accessible :full_name, :slug, :users
  has_many :users
  has_many :organizations_capabilities
  has_many :capabilities, :through => :organizations_capabilities
end
