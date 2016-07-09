Rails.application.routes.draw do

  get '/' => 'concerts#home'

  resources :concerts do
    resources :comments, only: [:new, :create]
  end

end
