class CommentsController < ApplicationController
	after_action :verify_authorized, only: []
	
	def new
		@comment = current_user.comments.new
	end

	def create
		# @post = Post.new post_params

		@post = params[:comment][:post_id]

		@comment = Comment.new(
			post_id: @post,
			comment: params[:comment][:comment]
			)

		if @comment.save
			redirect_to :back
		else
			render 'new', notice: "Comment was unable to save."
		end
	end

end
