class Api::ItemsController < ApplicationController
	def index
		@items = current_user.items.all
		render json: @items
	end

	def create
		item = current_user.items.new(item_params)
		if item.save
			render json: item, status: 200
		else
			render json: { error: "...sucks to suck" }, status: 400
		end
	end

	private

	def item_params
		params.require(:item).permit(:name, :price)
	end
end
