class Capability < ActiveRecord::Base
  belongs_to :user
  attr_accessible :default_val_bool, :default_val_num, :default_val_str, :expiry_date, :key, :name, :val_type
end
