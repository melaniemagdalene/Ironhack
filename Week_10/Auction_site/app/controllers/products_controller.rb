class ProductsController < ApplicationController
	def new
		@product = Product.new
	end

	def create
		@product = Product.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline]
		)

		if @product.save
			redirect_to product_path(@product.id)
		else
			render 'new'
		end
	end

	def show
		@product = Product.find_by(id: params[:id])
	end
end
