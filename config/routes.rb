Rails.application.routes.draw do
 

  devise_for :users
  root 'top#index'
  resources :posts, only:[:index,:new,:create,:show,:destroy] 
  resources :users, only: [:show]
  post "likes/:post_id/create" => "likes#create"
¥  post "likes/:post_id/destroy" => "likes#destroy"
end
