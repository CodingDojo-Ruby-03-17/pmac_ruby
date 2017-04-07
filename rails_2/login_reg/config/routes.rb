Rails.application.routes.draw do

    root 'users#index'

    get 'users' => 'users#index'

    post 'users' => 'users#create'

    get 'users/:id' => 'users#show'

    post 'sessions' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
