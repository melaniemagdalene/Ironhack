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

	# p.total_hours_in_month(3, 2014)
	def total_hours_in_month(month, year)
		date = Time.new(year, month)
		entries_in_month = time_entries.where(
			date: date, date.end_of_month
		)

		hours = entries_in_month.sum{ |e| e.hours }
		minutes = entries_in_month.sum { |e| e.minutes }
		(minutes / 60)
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
