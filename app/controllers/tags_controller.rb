class TagsController < ApplicationController
  def filter
    tag = Tag.find_by(name: params[:name])
    @posts = tag ? tag.posts : Post.all
    render 'posts/index'
  end
end
