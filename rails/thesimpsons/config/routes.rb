Rails.application.routes.draw do
    root 'characters#index'

    get 'characters/index'

    get 'characters/new'

    post 'characters' => 'characters#create'

  # post 'users' => '?'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
