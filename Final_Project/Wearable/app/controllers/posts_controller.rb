class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	after_action :verify_authorized, only: [:update]


	# Initializes new object, while passing two parameters
	commentable = Post.create!(:title => "Title", :description => "Description")

	comment = commentable.comments.create
	comment.title = "First comment."
	comment.comment = "This is the first comment."
	comment.save

	def index
		@posts = policy_scope(Post)
		@posts = Post.all.order("created_at desc")
		@post = Post.new
	end

	def new
		@post = current_user.posts.new
	end

	def create
		# @post = Post.new post_params
		@post = current_user.posts.new(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new', notice: "Post was unable to save."
		end
	end

	def show
		@post = Post.find(params[:id])

		# comments = commentable.comments.recent.limit(10).all

		# first_comment = comments[1].comment

		# post = @post.id

		@comment = Comment.new
	end

	def edit
	end

	def update
		@post = Post.find(params[:id])
			authorize @post
		if @post.update_attributes(post_params)
			redirect_to @post
		else
			render :edit
		end
	end

	def publish
		@post = Post.find(params[:id])
		authorize @post, :update?
		@post.publish!
		redirect_to @post
	end

	def destroy
		# @post.destroy
		# redirect_to posts_path
		@post = Post.find(params[:id])
			authorize @post
		if @post.destroy_attributes(post_params)
			redirect_to @post
		else
			render :destroy
		end
	end

	private

	def post_params

		params.require(:post).permit(:title, :description)
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
