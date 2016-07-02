Rails.application.routes.draw do
  get '/' => 'links#new'
  get '/links/:id' => 'links#show'
  # as: :links adds form helper
  post '/links' => 'links#create'
  get '/:shortlink' => 'links#index'
end
