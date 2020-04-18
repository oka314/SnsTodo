class SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:keyword]).order(created_at: :desc)
    binding.pry
    @search =params[:keyword]
  end
end
