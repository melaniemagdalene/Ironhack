Rails.application.routes.draw do
  resources :users, only: [:new, :show, :create, :destroy]
  resources :products, only: [:new, :index, :create, :show, :destroy]
end
