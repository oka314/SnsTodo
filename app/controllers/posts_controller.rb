class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @posts = Post.new
  end

  def creat
    @posts = Post.new
    if @posts.save
      redirect_to root_path
    else
      flash.now[:alert] = "投稿できませんでした"
    end
  end

end
