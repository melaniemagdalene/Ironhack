Rails.application.routes.draw do
	resources :users, only: [:new, :show, :create, :destroy] do
		resources :products, only: [:new, :show, :create, :index]
	end
	# 'all' is the action
	get '/products' => 'products#all', as: :products
	post '/products/:user_id/bids' => 'bids#create', as: :products_bid
end
