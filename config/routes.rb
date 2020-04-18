Rails.application.routes.draw do
 
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root 'top#index'
  resources :posts, only:[:index,:new,:create,:show,:destroy] 
  resources :users, only: [:show]
  post "likes/:post_id/create" => "likes#create"
 
end
