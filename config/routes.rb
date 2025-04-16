Rails.application.routes.draw do
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/signup", to: "users#new"

  get "users/new"
  resources :users

  get "/login", to: "sessions#new"
  post "/login", to: "sesisons#create"
  delete "/logout", to: "sesisons#destroy"
end
