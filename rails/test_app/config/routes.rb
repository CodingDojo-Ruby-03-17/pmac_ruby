Rails.application.routes.draw do
    root 'users#index'
    get 'users' => 'users#index'
    get '/' => 'users#index'
    get 'users/new' => 'users#new'
    get 'users/:id' => 'users#show'
    post '/users' => 'users#create'

    # THE SIMPSONS ROUTES
    # root 'characters#index'
    # get 'characters/index'
    # get 'characters/new'
    # get 'characters/:id' => 'characters#show'
    # patch 'characters/:id' => 'characters#update'
    # post 'characters' => 'characters#create'
    # delete 'characters/:id' => 'characters#delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
