Rails.application.routes.draw do
  
  root 'site#home'

  get '/become_a_host' => 'site#becomeAHost'

  get '/wish_lists' => 'site#wishLists'

  get '/help' => 'site#help'

  get '/sign_up' => 'site#signUp'

  get '/log_in' => 'site#logIn'

end
