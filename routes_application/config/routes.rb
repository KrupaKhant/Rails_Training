Rails.application.routes.draw do
  resources :photos
  namespace :admin do
    resources :users
  end

  get '/photos(/:id)', to: 'photos#show'

  get '/about', to: 'photos#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
