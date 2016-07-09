class Concert < ActiveRecord::Base
	# Establishes relationship between concert and comments
	has_many :comments

	def self.today
		Concert.where("date BETWEEN ? AND ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
	end

	def self.this_month
		Concert.where("date BETWEEN ? AND ?", DateTime.now.beginning_of_month, DateTime.now.end_of_month)
	end	
end
