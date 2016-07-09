class CommentsController < ApplicationController
	def new
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new
	end

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(
			params.require(:comment).permit(:comment)
			)
		@comment.save

		# Refer to rake routes
		redirect_to concert_path(@concert)#(:id)
	end
end
