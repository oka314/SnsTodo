class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @posts = Post.new
  end

  def creat
    @posts = Post.create(post_params)
    if @posts.save
      redirect_to user_path
    else
      render :new
      
    end
  end
  private post_params
    params.require(:post).permit(:explain)
end
