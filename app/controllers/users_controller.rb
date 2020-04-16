class UsersController < ApplicationController
 
  def show
   @user = User.find_by(params[:id])
   @post = @user.posts
  end
end
