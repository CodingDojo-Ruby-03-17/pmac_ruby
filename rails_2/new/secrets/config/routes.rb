Rails.application.routes.draw do
  resources :users

  get 'login' => 'users#index'

  get 'users/' => 'users#index' # display a list of all users

  get 'users/new' => 'users#new' # return an HTML form for creating a new users

  post 'users/' => 'users#create' # create a new user

  get 'users/:id' => 'users#show' # display a specific user

  get 'users/:id/edit' => 'users#edit' # return an HTML form for editing a user

  patch 'users/:id' => 'users#update' # update a specific user

  post 'sessions/create'

  delete 'users/:id' => 'users#destroy' # delete a specific user


end



# GET	/photos	photos#index	display a list of all photos
# GET	/photos/new	photos#new	return an HTML form for creating a new photo
# POST	/photos	photos#create	create a new photo
# GET	/photos/:id	photos#show	display a specific photo
# GET	/photos/:id/edit	photos#edit	return an HTML form for editing a photo
# PATCH/PUT	/photos/:id	photos#update	update a specific photo
# DELETE	/photos/:id	photos#destroy	delete a specific photo
