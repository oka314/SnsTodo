Rails.application.routes.draw do
 
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root 'top#index'
  resources :posts do
    resources :likes, only:[:create,:destroy]
  end
  resources :users, only: [:show]
 
end
