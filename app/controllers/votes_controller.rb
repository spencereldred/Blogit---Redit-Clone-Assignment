class VotesController < ApplicationController

  def create
    if params[:votable_type] == "Post"
      @post = Post.find_by_id(params[:post_id])
      @post.votes.create(vote: params[:vote], votable_type: params[:votable_type], user_id: params[:user_id])

    else
      @comment = Comment.find_by_id(params[:comment_id])
      @comment.votes.create(vote: params[:vote], votable_type: params[:votable_type], user_id: params[:user_id])
    end

    redirect_to posts_path
  end
end
