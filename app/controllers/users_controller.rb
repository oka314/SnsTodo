class UsersController < ApplicationController
 
  def show
   @name = current_user.name
   @posts = current_user.posts
   @user = User.find(params[:id])
   @post = @user.posts
  end
end
