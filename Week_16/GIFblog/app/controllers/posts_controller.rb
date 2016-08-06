class PostsController < ApplicationController

	# Public
	
	# Displays posts
	def index
		@posts = Post.show_post
	end

	def new
		# New instance of a post
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
        
        if @post.save
	        redirect_to '/posts'
	    else
	    	render "new"
	end

	# Protected, strong parameters
	
	private

	def post_params
		params.require(:post).permit(:title, :gif_url)
	end

	def upvote
		@post = Post.find(params[:id])
		@post.upvote
			redirect_to(posts_path)
	end
end
