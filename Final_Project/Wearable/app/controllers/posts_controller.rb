class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@posts = Post.all.order("created_at desc")
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new
		if @post.save
			flash[:success] = "Post created successfully."
			redirect_to root_url
		else
			render 'index'
		end
	end

	# def create
		# @post = Post.new(post_params)
		# if @post.save
			# redirect_to '/posts'
		# else
			# render "new"
		# end
	# end

	# def home
	# 	@posts = Post.all
	# end

	# def show
	#     @user = User.find(session[:user_id])
	#     @signed_in_user = session[:user_id]

	#     @post = Post.find params[:id]
	#     @description = Description.new(post: @post)
	# end

	def edit
	end


	def update
	end

	def destroy
	end
end
