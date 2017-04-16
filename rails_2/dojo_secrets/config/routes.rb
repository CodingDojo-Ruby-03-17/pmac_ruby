Rails.application.routes.draw do

    get 'sessions/create'

    get 'sessions/destroy'

    get '/' => 'users#login_reg'

    get '/secrets' => 'secrets#show'

    get 'secrets/create'

    get 'secrets/show'

    get 'secrets/update'

    get 'secrets/destroy'

    # resources :users, :secrets

    get 'users/create'

    get 'users/show'

    get 'users/update'

    get 'users/destroy'

    get '/users' => 'users#show'

    post 'users' => 'users#create'
end
