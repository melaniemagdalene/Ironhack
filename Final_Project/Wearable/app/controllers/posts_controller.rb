class PostsController < ApplicationController
	def home
		@posts = Post.all
	end

	def index
	end

	def show
	    @user = User.find(session[:user_id])
	    @signed_in_user = session[:user_id]

	    @post = Post.find params[:id]
	    @description = Description.new(post: @post)
	end

	def new
		@post = Post.new
	end

	def edit
	end

	def create
		# @post = Post.new(post_params)
        
	#      if @post.save
	 #        redirect_to '/posts'
	 #    else
	 #    	render "new"
	 #    end
	end

	def update
	end

	def destroy
	end
end
