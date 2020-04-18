class SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:keyword])
    @serch =params[:keyword]
  end
end
