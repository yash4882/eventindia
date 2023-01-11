Rails.application.routes.draw do
  resources :events
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/contact', to: "home#contact"
  get '/about', to: "home#about"
end
