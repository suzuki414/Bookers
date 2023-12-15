Rails.application.routes.draw do
  # get 'books/new'
  # post 'books' => 'books#create'
  # get 'books' => 'books#index'
  # get 'books/show'
  # get 'books/edit'

  get '/top' => 'homes#top'
  get 'books' => 'books#index'
  resources :books, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
