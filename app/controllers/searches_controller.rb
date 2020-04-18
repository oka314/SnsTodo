class SearchesController < ApplicationController
  def self.search
    @posts = Post.search(params[:keyword])
    @serch =params[:keyword]
  end
end
