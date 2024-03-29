Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :events do
    resources :members
    resources :activities
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/contact', to: "home#contact"
  get '/about', to: "home#about"
end
