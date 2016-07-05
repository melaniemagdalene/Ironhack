class TimeEntriesController < ApplicationController
	
	# Create action

	# time_entries is a collection
	def update
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
		time_entry_params = params.require(:time_entry).permit(
			:hours, :minutes, :date, :comment
		)
		if @time_entry.update(time_entry_params)
			redirect_to project_time_entries_path(@project)
		else
			render 'edit'
		end
	end

	def edit
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
	end

	def create
		# input: params[:project_id] and params[:time_entry]
		# find resourses needed
		@project = Project.find(params[:project_id])
		# Create strong parameters whitelist
		# time_entry_params = params.require(:time_entry).permit(
		# 	:hours, :minutes, :date
		# )
		# time_entry_params = { hours: 1, minutes: 3, date: somedate }
		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
	end

	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries
	end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	# encapsulation code
	private

	def time_entries_params
		params.require(:time_entry).permit(
			:hours, :minutes, :date, :comment
		)
	end
end

	# Notes
	# 1. Find the project
		# @project = Project.find(params[:id])
	# 2. Initialize a new time entry for the project
		# @time_entry = @project.time_entries.new
	# 3. Save the time entry
		# @time_entry.save
