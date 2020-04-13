class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @posts = Posts.new
  end

  def creat
    @posts = Posts.new
    if @posts.save
      flash

end
