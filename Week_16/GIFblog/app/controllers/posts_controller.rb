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
	end

	def show
		@post = Post.find(params[:id])
	end

	def upvote
		# Find post
		@post = Post.find(params[:id])
		# Increase the votes by 1
		@post.increment!(:nov)
		# Redirect to the show page
		redirect_to post_path(@post)
	end

	def downvote
		@post = Post.find(params[:id])
		@post.decrement!(:nov)
		redirect_to post_path(@post)
	end

	# Protected, strong parameters

	private

	def post_params
		params.require(:post).permit(:title, :gif_url)
	end
end
