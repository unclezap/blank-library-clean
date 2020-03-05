Rails.application.routes.draw do
  # resources :lines, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
  # resources :pages, only: [:index, :show, :new, :edit, :update, :new, :destroy, :create]
  resources :users, only: [:index, :show, :new, :update, :new, :create]
  resources :galleries, only: [:index, :show, :edit, :update]
  
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
