class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@user = User.new(user_params)
		@user.save
	end

	def update
	end

	def destroy
	end
end
