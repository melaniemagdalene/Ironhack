Rails.application.routes.draw do
 #  get 'sessions/new'

 #  devise_for :users
	# # get 'home/index'

	# # get 'users/new'
	# # get 'home/index'

	# root 'home#index'

	root   'static_pages#home'
	get    '/help',    to: 'static_pages#help'
	get    '/about',   to: 'static_pages#about'
	get    '/contact', to: 'static_pages#contact'
	get    '/signup',  to: 'users#new'
	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'


	resources :users do
	resources :posts
	end
end
