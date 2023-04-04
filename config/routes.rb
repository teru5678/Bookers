Rails.application.routes.draw do
  root 'homes#top'
  get '/books' =>'books#index'
  post 'books' =>'books#create'
  get 'books/:id' => 'books#show',as:'book'
  get 'books/:id/edit' => 'book#edit',as:'edit_'
  get 'books/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
