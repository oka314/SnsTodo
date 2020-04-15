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
      render "/users/#{current_user.id}"
    else
      redirect_to root_path
      
    end
  end

  private 
  def post_params
    params.require(:post).permit(:explain).merge(
      user_id: current_user.id
      )
  end
end
