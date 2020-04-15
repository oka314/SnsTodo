class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
   
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to ("/users/#{current_user.id}")
    else
      render :new
    end
  end
  
  private 
  def post_params
    params.require(:post).permit(:explain,:id).merge(
      user_id: current_user.id
      )
  end
end
