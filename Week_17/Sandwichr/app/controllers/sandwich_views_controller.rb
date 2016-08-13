class SandwichViewsController < ApplicationController
	def index
		sandwiches = Sandwich.all
		render 'index'
	end
end
