Rails.application.routes.draw do
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]

  # get '/genres', to: 'genres#index', as: 'genres'
  # get '/genres/new', to: 'genres#new', as: 'new_genre'
  # post '/genres', to: 'genres#create', as: 'genres'
  # get '/genres/:id', to: 'genres#show', as: 'genre'
  # get '/genres/:id/edit', to: 'genres#edit', as: 'edit_genre'
  # patch '/genres/:id', to: 'genres#update', as: 'genre'
  # delete '/genres/:id', to: 'genres#destroy', as: 'genre'


  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
