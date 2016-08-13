Rails.application.routes.draw do
	resources :ingredients
	resources :sandwiches
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"

	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
		resources :sandwiches
		resources :ingredients
		post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
	end
end
