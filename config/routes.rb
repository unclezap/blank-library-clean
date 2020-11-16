Rails.application.routes.draw do
  # resources :lines, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
  # resources :pages, only: [:index, :show, :new, :edit, :update, :new, :destroy, :create]
  resources :users, only: [:index, :show, :new, :update, :new, :create]
  resources :galleries, only: [:index, :show, :edit, :update, :new, :create]
  resources :walls, only: [:show]
  resources :shelves, only: [:show]
  resources :books, only: [:show]
  resources :pages, only: [:show, :index]
  
  post '/galleries/:id/', to: "galleries#move"
  get '/walls/:id/', to: "walls#splash", as: "wall/splash"
  post '/walls/:id', to: "walls#show"
  get '/shelves/:id', to: "shelves#splash", as: "shelf/splash"
  post '/shelves/:id', to: "shelves#show"
  get '/books/:id', to: "books#splash", as: "book/splash"
  post '/books/:id', to: "books#show"
  get '/pages/:id', to: "pages#splash", as: "page/splash"

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  delete '/users/destroy', to: "users#destroy"
  get '/wander', to: "sessions#wander"
  post '/wander', to: "sessions#wander"

  patch '/pocket', to: "pocket#update"
  delete '/pocket', to: "pocket#delete", as: "/delete/pocket"

  # post '/pages', to: 'pages#create', as: '/create/page'
  # resources :users, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
end
