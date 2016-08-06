Rails.application.routes.draw do

	post "/posts/:id/upvote" => "posts#upvote"
	resources :posts, only: [:index, :new, :create, :show]
end
