class SandwichesController < ApplicationController
	protect_from_forgery with: :null_session

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def add_ingredient
		@ingredient = Ingredient.find_by(id: params[:ingredient_id])
		@sandwich = Sandwich.find_by(id: params[:id])

		@ingredient.sandwiches.push(@sandwich)

		render json: @sandwich
	end

	# def total_calories

	# end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
			unless sandwich
				render json: {error: "Sandwich not found."},
					status: 404
				return
			end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
			unless sandwich
				render json: {error: "Sandwich not found."},
					status: 404
				return
			end
		sandwich.destroy
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
			unless sandwich
				render json: {error: "Sandwich not found."},
					status: 404
				return
			end
		render json: sandwich.to_json({:include => :ingredient})
	end

	# Private method used within a controller's actions
	private

	# Strong Parameters
	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end
end
