def new
	@comment = current_user.comments.new
end

def create
	# @post = Post.new post_params
	@comment = current_user.comments.new(comment_params)

	if @comment.save
		redirect_to @comment
	else
		render 'new', notice: "Comment was unable to save."
	end
end
