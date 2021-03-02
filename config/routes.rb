Rails.application.routes.draw do
  get "books/search", to: "books#search", as: "book_search"
  
  resources :books
  
  root to: "home#index"
end
