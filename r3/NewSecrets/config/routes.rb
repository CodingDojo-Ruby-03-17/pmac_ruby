Rails.application.routes.draw do

    get 'users' => 'users#index' # display a list of all users
    get 'users/new'

    get 'users/show'

    get 'users/edit'

    get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
