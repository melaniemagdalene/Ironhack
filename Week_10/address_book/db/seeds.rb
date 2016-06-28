# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contacts_list = [
	[ "Juan Espinosa", "Pines Boulevard", "305-123-4444", "jaun@gmail.com" ],
	[ "Elisa Solorzano", "Chapman Field Drive", "305-123-5555", "elisa@gmail.com" ],
	[ "Sarah Fiol", "Coral Way", "305-123-6666", "sarah@gmail.com" ],
	[ "Rosie Beruvides", "South Red Road", "305-123-7777", "rosie@gmail.com" ]
	]

contacts_list.each do |name, address, phone_number, email_address|
	Contact.create(name: name, address: address, phone_number: phone_number, email_address: email_address)
end
