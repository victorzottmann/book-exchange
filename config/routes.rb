Rails.application.routes.draw do
  resources :authors
  resources :books
  resources :categories
  resources :publishers

  devise_for :users
  
  get "books/search", to: "books#search", as: "book_search"
  
  root to: "home#index"
end
