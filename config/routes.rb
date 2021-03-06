Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new'
  post '/products', to: 'products#create'
  get '/products/:id/edit', to: 'products#edit'
  put '/products/:id', to: 'products#update'
  get '/products/:id', to: 'products#show'
  
  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new'
  post '/books', to: 'books#create'
  get '/books/:id/edit', to: 'books#edit'
  put '/books/:id', to: 'books#update'
  get'/books/:id', to: 'products#show'
end

