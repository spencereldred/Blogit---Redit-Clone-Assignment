class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def create
    @post = Post.create(link: params[:post_link], body: params[:post_body], user_id: params[:user_id])
    puts "&&&&&&&&&&&&&&&&&&&& @post: #{params.inspect}"
    # render json: { link: params[:post_link], body: params[:post_body], user_id: params[:user_id] }
    # render json: @post
    redirect_to posts_path
  end

end
