Rails.application.routes.draw do
  get '/:shortlink' => 'links#index'
end
