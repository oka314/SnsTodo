class SearchesController < ApplicationController
  def index
    # @posts = Post.search(params[:keyword]).order(created_at: :desc)
    # @users =  @posts+User.search(params[:keyword])
    @users = User.search(params[:keyword]).order(created_at: :desc).page(params[:page]).per(30)
    @search =params[:keyword]
  end
end
