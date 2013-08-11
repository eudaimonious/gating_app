class Capability < ActiveRecord::Base
  belongs_to :user
  attr_accessible :expiry_date, :key, :name
  has_and_belongs_to_many :organizations
 end
