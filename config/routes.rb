Rails.application.routes.draw do
  # resources :lines, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
  resources :pages, only: [:index, :show, :new, :edit, :update, :new, :destroy, :create]
  # post '/pages', to: 'pages#create', as: '/create/page'
  # resources :users, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
end
