class FoodsController < ApplicationController
	def index
		@foods = Food.all
		authorize @foods
	end

	def new
		@user = current_user
		@food = @user.foods.new

		authorize(@food)
	end
end
