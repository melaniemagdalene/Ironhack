class PostsController < ApplicationController
	def home
		@posts = Post.all
	end

	def index
	end

	def show
	end

	def new
		@post = Post.find(params[:post_id])
		@post = @user.posts.new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end
end