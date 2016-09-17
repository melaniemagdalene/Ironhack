Rails.application.routes.draw do

  devise_for :users

	root   'static_pages#home'
	get    '/help',    to: 'static_pages#help'
	get    '/about',   to: 'static_pages#about'
	get    '/contact', to: 'static_pages#contact'
	get    '/posts', to: 'static_pages#post'
	get    '/signup',  to: 'users#new'
 
	resources :posts	
end
