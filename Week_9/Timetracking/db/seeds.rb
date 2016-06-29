# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project1 = Project.create(name: "Ironhack", description: "Ruby On Rails")
project2 = Project.create(name: "Lessons", description: "Duh!")
project3 = Project.create(name: "Hello World", description: "Another Project")

project = [project1, project2, project3]

project.each do |project|
	(rand(5) + 1).times do |i|
		project.time_entries.create(hours: rand(24), minutes: rand(60))
	end
end
