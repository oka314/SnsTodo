Rails.application.routes.draw do
 

  devise_for :users
  root 'top#index'
  resources :posts, only:[:index,:new,:create,:show,:destroy] 
  resources :users, only: [:show]
  post   '/like/:product_id' => 'likes#like',   as: 'like'
  delete '/like/:product_id' => 'likes#unlike', as: 'unlike'

end
