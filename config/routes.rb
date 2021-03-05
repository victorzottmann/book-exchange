Rails.application.routes.draw do
  devise_for :users
  
  get "books/search", to: "books#search", as: "book_search"
  
  resources :authors
  resources :books
  resources :publishers
  
  root to: "home#index"
end
