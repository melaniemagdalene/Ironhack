Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/contact' => 'site#contact'

  	# Specify routes to generate
	resources :projects, only: [:index, :show, :new, :create] do
		resources :time_entries, only: [:index, :new, :create]
	end
end
