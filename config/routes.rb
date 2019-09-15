Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  resources :users

  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'
end