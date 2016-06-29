# Create a class method called ::clean_old in the Project class that deletes all projects older than 1 week
# Move the code to obtain the last 10 created projects to a method in the class Project name last_created_projects(n)

class Project < ActiveRecord::Base
	has_many :time_entries

	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end
end


# Example

# class Project
# 	attr_reader :name

# 	def initialize(name)
# 		@name = name
# 	end
# end

# p = Project.new("Ironhack")
# p.name
