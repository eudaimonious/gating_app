class Capability < ActiveRecord::Base
  belongs_to :user
  
  has_many :organizations_capabilities
  has_many :organizations, :through => :organizations_capabilities
  
  has_one :capability_setting

  has_one :setboolean, through: :capability_setting, source: :setting, source_type: 'Setboolean'
  has_one :setstring, through: :capability_setting, source: :setting, source_type: 'Setstring'
  has_one :setnumeric, through: :capability_setting, source: :setting, source_type: 'Setnumeric'

  accepts_nested_attributes_for :organizations
  accepts_nested_attributes_for :organizations_capabilities, :allow_destroy => true

  def setting
    self.capability_setting.try(:setting)
  end

  #This was giving me a mass assignment error which I couldn't 
  #get rid of so I whitelisted everything via application.rb :-/
  def setting=(newSetting)
    self.build_capability_setting(setting: newSetting)
  end

  def as_json(options={})
  	super(:only => [:key])
  end
end
