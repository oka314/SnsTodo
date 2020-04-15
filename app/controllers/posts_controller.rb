class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
   
  end

  def create
    @post = Post.create(post_params)  
    if @post.save
      redirect_to user_path
    else
      render :new
      
    end
  end

  private 
  def post_params
    params.require(:post).permit(:explain)
  end
end
