Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'books/:id' => 'books#show', as: 'book'
  patch 'books/:id' => 'books#update', as: 'update_book'

  get '/top' => 'homes#top'
  get 'books' => 'books#index'
  # resources :books, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
