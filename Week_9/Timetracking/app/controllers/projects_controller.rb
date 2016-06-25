class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(
			name: params[:project][:name],
			description: params[:project][:description]
			)
		@project.save

		redirect_to '/projects'
	end
end
