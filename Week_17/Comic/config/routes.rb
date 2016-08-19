Rails.application.routes.draw do
	devise_for :users
	# resources :users
	root to: "static_pages#home"
	get '/users/:id' => 'users#show'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
