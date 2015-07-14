Rails.application.routes.draw do

  # Routes
  root 'places#index'
  get '/places/:id/update' => 'places#update'
  get '/places/submit_new' => 'places#create'
  get '/places/new' => 'places#new'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  get '/places/:id/delete' => 'places#delete'
  get '/places/:id/edit' => 'places#edit'
  
end
