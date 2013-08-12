class Capability < ActiveRecord::Base
  belongs_to :user
  attr_accessible :expiry_date, :key, :name, :user_id, :organizations_capabilities_attributes
  has_many :organizations_capabilities
  has_many :organizations, :through => :organizations_capabilities
  accepts_nested_attributes_for :organizations
  accepts_nested_attributes_for :organizations_capabilities, :allow_destroy => true

  def as_json(options={})
  	super(:only => [:key])
  end
 end
