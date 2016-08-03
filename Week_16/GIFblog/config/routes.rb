Rails.application.routes.draw do
  get "/posts" => "posts#index"
  get "/posts/new" => "posts#new"
  post "/posts", :to => "posts#create"
  get "/posts/:id" => "posts#show"
end
