Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  devise_for :users
  resources :users, only: [:show, :index, :edit]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
