Rails.application.routes.draw do
  resources :categories
  devise_for :users
  
  get "books/search", to: "books#search", as: "book_search"
  
  resources :authors
  resources :books
  resources :publishers
  
  root to: "home#index"
end
