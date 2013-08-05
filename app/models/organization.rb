class Organization < ActiveRecord::Base
  attr_accessible :full_name, :slug, :users
  has_many :users
end
