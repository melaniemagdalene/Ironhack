class TimeEntry < ActiveRecord::Base

	has_many :time_entries
	has_many :entries, class_name: "TimeEntry"

	belongs_to :project
	validates :project, presence: true
	validates :hours, :minutes, presence: true, numericality: true

	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end
end
