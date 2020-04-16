class UsersController < ApplicationController
 
  def show
   @posts = current_user.name
    @posts = Post.order(created_at: :desc)

  end
end
