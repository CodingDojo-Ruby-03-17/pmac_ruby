Rails.application.routes.draw do
  get 'users' => 'users#index'
  get '/' => 'users#index'
  get 'users/new' => 'users#new'
  get 'users/show' => 'users#show'
  post '/users' => 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
