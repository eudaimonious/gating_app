class Capability < ActiveRecord::Base
  belongs_to :user
  belongs_to :capability_types, polymorphic: true
  attr_accessible :capability_type_type,:expiry_date, :key, :name, :user_id, :organizations_capabilities_attributes, :capability_type_num_attributes
  has_many :organizations_capabilities
  has_many :organizations, :through => :organizations_capabilities
  accepts_nested_attributes_for :organizations
  accepts_nested_attributes_for :organizations_capabilities, :allow_destroy => true
  accepts_nested_attributes_for :capability_types

  def as_json(options={})
  	super(:only => [:key])
  end
 end
