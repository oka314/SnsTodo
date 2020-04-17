Rails.application.routes.draw do
 
  devise_for :users
  root 'top#index'
  resources :posts, only:[:index,:new,:create,:show,:destroy]　do
    resources :likes, only:[:create,:destroy]
  end
  resources :users, only: [:show]
 
end
