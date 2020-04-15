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
      flash.now[:alert] = "登録しました！今日も１日頑張りましょう！"
      redirect_to ("/users/#{current_user.id}")
    else
      flash.now[:alert] = "保存できませんでした"
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
