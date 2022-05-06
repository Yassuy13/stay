Rails.application.routes.draw do
  get 'sessions/new'
  devise_for :users
  root  'stays#index'
  get 'stays/index'
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stays
  resources :users
end
