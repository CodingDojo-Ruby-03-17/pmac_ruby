Rails.application.routes.draw do

    root 'users#index'
    post 'users' => 'users#create'
    get 'users/:id' => 'users#show'
    get 'users' => 'users#index'
    get 'users/new' => 'users#new'
    post 'sessions' => 'sessions#create'








    # root 'users#index'
    # post 'users' => 'users#create'
    # get 'users/:id' => 'users#show'
    # post 'sessions' => 'sessions#create'
    #
    # get 'users/index'
    # get 'index' => 'users#index'
    # get 'users/new'
    # get 'users/update'
    # get 'users/show'
    # get 'users/destroy'


    # root 'users#index'
    # post 'users' => 'users#create'


  # get 'users' => 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
