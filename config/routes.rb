Rails.application.routes.draw do
  resources :authors
  resources :books
  resources :categories
  resources :publishers

  devise_for :users
  
  get "books/search", to: "books#search", as: "book_search"

  get "categories/1", to: "categories#show", as: "creative_arts"
  get "categories/2", to: "categories#show", as: "design"
  get "categories/3", to: "categories#show", as: "tech"
  get "categories/4", to: "categories#show", as: "science"
  
  root to: "home#index"
end
