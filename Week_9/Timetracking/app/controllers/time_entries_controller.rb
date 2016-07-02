class TimeEntriesController < ApplicationController

	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries
	end

	def create
		# input: project's id and it'll be in the params hash
		# 1. Find the project
			# @project = Project.find(params[:id])
		# 2. Initialize a new time entry for the project
			# @time_entry = @project.time_entries.new
		# 3. Save the time entry
			# @time_entry.save
		# outcome: a time entry for the give project is created
	end
end
