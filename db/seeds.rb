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

#Create a search capability
search = Capability.find_or_create_by_name(
	name: "Advanced Search",
	key: "advanced_search",
	expiry_date: "2013-10-15")

#Assign owner to search capability
unless admin.capabilities.include? search
	admin.capabilities << search
	admin.save
end

#Assign default value to search capability
search.setting = Setboolean.find_or_create_by_value(:value => false)
search.save

#Create The U!
umiami = Organization.find_or_create_by_slug(
	full_name: "University of Miami",
	slug: "umiami")

#Assign search capability to The U!
unless umiami.capabilities.include? search
	umiami.capabilities << search
	umiami.save
end

#Create a messaging capability
messaging = Capability.find_or_create_by_name(
	name: "Messaging",
	key: "messaging",
	expiry_date: "2013-10-30")

#Assign owner to messaging capability
unless admin.capabilities.include? messaging
	admin.capabilities << messaging
	admin.save
end


#Assign default value to messaging capability
messaging.setting = Setnumeric.find_or_create_by_value(:value => 5000)
messaging.save


#Create MIT
mit = Organization.find_or_create_by_slug(
	full_name: "Massachusetts Institute of Technology",
	slug: "mit")

#Assign messaging capability to MIT
unless mit.capabilities.include? messaging
	mit.capabilities << messaging
	mit.save
end
