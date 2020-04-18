class UsersController < ApplicationController
 
  def show
   @user = User.find(params[:id])
   @post = @user.posts.order(created_at: :desc)
   @like = Like.new
  end

  # def destroy
  #   @user = User.all
  #   @post = @user.posts.find(params[:id])
  #   if @post.destroy
  #     redirect_to ("/users/#{current_user.id}"),notice:"削除しました。"
  #   else 
  #     redirect_to ("/users/#{current_user.id}"),notice:"削除できませんでした。"
  #   end
  # end

end
