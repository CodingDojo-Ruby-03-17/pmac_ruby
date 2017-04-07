Rails.application.routes.draw do

    resources :users
    get 'users/new' => 'users#new'
    get 'users' => 'users#index'
    post 'users/new' => 'users#create'
    get 'users/index' => 'users#index'
    # resources :users
    get 'index' => 'users#index'
    get 'users/:id/edit(.:format)' => 'users#edit'
    # root 'users#index'

    # paulmaclachlan@MBA my_users_app (master)*$ rake routes
    #      Prefix Verb   URI Pattern               Controller#Action
    #       users GET    /users(.:format)          users#index
    #             POST   /users(.:format)          users#create
    #    new_user GET    /users/new(.:format)      users#new
    #   edit_user GET    /users/:id/edit(.:format) users#edit
    #        user GET    /users/:id(.:format)      users#show
    #             PATCH  /users/:id(.:format)      users#update
    #             PUT    /users/:id(.:format)      users#update
    #             DELETE /users/:id(.:format)      users#destroy
    #   users_new GET    /users/new(.:format)      users#new
    #             GET    /users(.:format)          users#index
    #             POST   /users/new(.:format)      users#create
    # users_index GET    /users/index(.:format)    users#index
    #       index GET    /index(.:format)          users#index
    #             GET    /users/:id/edit(.:format) users#edit


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
