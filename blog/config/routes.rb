Rails.application.routes.draw do
  get 'form', to: "form#fillform"
  get '/form/new', to: "form#new"
  get '/form/edit', to: "form#new"
  root "articles#index"
  
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
