class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	# Displays posts
	def index
		@posts = Post.show_post
	end

	def create
		@post =Post.new(
            title: params[:post][:title],
            gif_url: params[:post][:gif_url],
        )
        @post.save

        redirect_to '/posts'
	end

end
