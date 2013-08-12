class Capability < ActiveRecord::Base
  belongs_to :user
  attr_accessible :expiry_date, :key, :name
  has_many :organizations_capabilities
  has_many :organizations, :through => :organizations_capabilities
 end
