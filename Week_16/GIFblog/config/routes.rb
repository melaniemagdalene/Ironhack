Rails.application.routes.draw do

	resources :posts, only: :title, :gif_url
end
