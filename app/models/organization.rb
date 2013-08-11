class Organization < ActiveRecord::Base
  attr_accessible :full_name, :slug, :users
  has_many :users
  has_and_belongs_to_many :capabilities
end
