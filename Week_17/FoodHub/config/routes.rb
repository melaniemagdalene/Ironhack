Rails.application.routes.draw do
	root to: 'static_pages#home'

		devise_for :users
		resources :foods, only:[:index]
end
