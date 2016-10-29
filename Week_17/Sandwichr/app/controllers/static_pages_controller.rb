class StaticPagesController < ApplicationController
	def home
		@sandwiches = Sandwich.all
	end
end
