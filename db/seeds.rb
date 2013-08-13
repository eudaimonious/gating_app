# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create an admin user
admin = User.find_or_create_by_email(
	email: "user1@gmail.com",
	password: "password",
	admin: true,
	organization_id: nil)

#Create a regular user
user = User.find_or_create_by_email(
	email: "user2@gmail.com",
	password: "password",
	admin: false,
	organization_id: 1)

#Create a boolean capability
boolcap = Capability.find_or_create_by_name(
	name: "Advanced Search",
	key: "advanced_search",
	user_id: 1,
	expiry_date: "2013-10-15",
	capability_type_type: "CapabilityTypeBool")

#Create The U!
umiami = Organization.find_or_create_by_slug(
	full_name: "University of Miami",
	slug: "umiami")

#Assign boolean capability to The U!
unless umiami.capabilities.include? boolcap
	umiami.capabilities << boolcap
	umiami.save
end

#Assign default value to boolean capability
boolcap.capability_types = CapabilityTypeBool.find_or_create_by_value(:value => false)
boolcap.capability_type_id = boolcap.capability_types_id
boolcap.save

#Create a numeric capability
numcap = Capability.find_or_create_by_name(
	name: "Messaging",
	key: "messaging",
	user_id: 1,
	expiry_date: "2013-10-30",
	capability_type_type: "CapabilityTypeNum")

#Create MIT
mit = Organization.find_or_create_by_slug(
	full_name: "Massachusetts Institute of Technology",
	slug: "mit")

#Assign numeric capability to MIT
unless mit.capabilities.include? numcap
	mit.capabilities << numcap
	mit.save
end

#Assign default value to numeric capability
numcap.capability_types = CapabilityTypeNum.find_or_create_by_value(:value => 5000)
numcap.capability_type_id = numcap.capability_types_id
numcap.save
