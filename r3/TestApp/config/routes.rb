Rails.application.routes.draw do
  get 'sessions/new'

  # get 'hellos/welcome'

  # get 'hellos/goodbye'

  # get 'hellos/denied'

  # get 'hellos/say_hello'

  # get 'likes/create'

  # get 'likes/destroy'

  # get 'secrets/index'

  resources :users
  resources :secrets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
