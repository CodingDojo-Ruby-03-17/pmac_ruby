Rails.application.routes.draw do
    root 'characters#index'

    get 'characters/index'

    get 'characters/new'

    get 'characters/:id' => 'characters#show'

    patch 'characters/:id' => 'characters#update'

    post 'characters' => 'characters#create'

    delete 'characters/:id' => 'characters#delete'



  # post 'users' => '?'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
