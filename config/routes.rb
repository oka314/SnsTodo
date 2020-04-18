Rails.application.routes.draw do
 

  devise_for :users
  root 'top#index'
  resources :posts, only:[:index,:new,:create,:show,:destroy] 
  resources :users, only: [:show]
  resources :searches, only: [:index]
  #今後の自分の課題→いいね機能を絶対に実装する！
  # post "likes/:post_id/create" => "likes#create"
  # post "likes/:post_id/destroy" => "likes#destroy"
end
