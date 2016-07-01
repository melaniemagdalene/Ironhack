class LinksController < ApplicationController
	# def index
	# 	params[:shortlink]
	# 	# input is short URL params[:shortlink]
	# 	@link = Link.find_by(short_url: params[:shortlink])
	# 	redirect_to @link.url
	# end

	def create
		@link = Link.new
	end
end
