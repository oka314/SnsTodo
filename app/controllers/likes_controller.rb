class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(like_params)
    if @like.save
      redirect_to posts_path,notice:'いいねしました！'
    else
      redirect_to posts_path,notice:'いいね出来ませんでした！'
    end

  def destroy
    @like = Like.find_by(like_params, user_id: current_user.id)
    @like.destroy
    redirect_to posts_path,notice:'いいねを外しました'
  end

  private
  def like_params
    params.permit(:post_id)
  end  
end
