Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # root 'users#show'これはいらない
  # '/' 'home/about' のページは、1.ルートパスを記述してつくる, 2.homeコントローラを新たに作る
  devise_for :users
  resources :users, only: [:show, :index, :edit, :update]
  resources :books

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
