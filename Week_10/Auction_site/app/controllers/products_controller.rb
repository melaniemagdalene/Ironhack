class ProductsController < ApplicationController

    def new
        @user = User.find params[:user_id]
        @product = @user.products.new
    end

    def create
        @user = User.find params[:user_id]

        #permit is whitelisting only those attributes to be assigned
        product_params = params.require(:product).permit(:title, :description, :deadline)

        # without permit: @project.time_entries.new params[:time_entry]
        @product = @user.products.new(product_params)
        
        if @product.save
            redirect_to user_products_path(@user.id)
        else
            render 'new'
        end 
    end

    def show
        @user = User.find params[:user_id]
        @product = @user.products.find_by(id: params[:id])
    end

    def index
        @user = User.find params[:user_id]
        @products = @user.products.all
    end
	
    def all
        @all_products = Product.all
    end
end
