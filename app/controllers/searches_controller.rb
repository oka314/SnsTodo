class SearchesController < ApplicationController
  @posts = Post.searh(params[:keyword])
  @serch =params[:keyword]
end
