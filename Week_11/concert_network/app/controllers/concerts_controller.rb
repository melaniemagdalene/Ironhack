class ConcertsController < ApplicationController
	def home
		@concerts = Concert.today
		@concerts_this_month = Concert.this_month
	end

	# concert is plural to a display list of all concerts
	def index
		@concerts = Concert.all
	end

	def show
		@concert = Concert.find(params[:id])
		@comments = @concert.comments.all
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description]
		)

		# "path" redirects the user to the root
		if @concert.save
			redirect_to concerts_path
		else
			render 'new'
		end
	end

	def destroy
		@concert = Concert.find(params[:id])
		if @concert.destroy
			redirect_to concerts_path, :notice => "Event Successfully Deleted."
		end
	end
end
