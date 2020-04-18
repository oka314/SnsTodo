class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)

  end

  def new
    @post = Post.new
  end

  def show
  
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to ("/users/#{current_user.id}"),notice:'登録しました！今日も一緒に頑張りましょう！'
    else
      render :new,notice:'登録失敗しました'
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to ("/users/#{current_user.id}"),notice:"削除しました。"
    else 
      redirect_to ("/users/#{current_user.id}"),notice:"削除できませんでした。"
    end
  end
  
  private 
  def post_params
    params.require(:post).permit(:explain,:id).merge(
      user_id: current_user.id
      )
  end
end
