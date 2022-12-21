Rails.application.routes.draw do
  root 'payment#hello'
  get 'index', to: 'users#index'
  patch 'users/:id', to: 'users#update'
  resources:users
end
