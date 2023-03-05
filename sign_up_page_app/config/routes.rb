Rails.application.routes.draw do
  root "userdata#index"

  resources :userdata

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
