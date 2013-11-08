class CommentsController < ApplicationController

  def create
    if params[:commentable_type] == "Post"
      @post = Post.find_by_id(params[:post_id])
      @post.comments.create(text: params[:comment_text], user_id: params[:user_id], commentable_type: params[:commentable_type])
    else
      @comment = Comment.find_by_id(params[:comment_id])
      @comment.comments.create(text: params[:comment_text], user_id: params[:user_id], commentable_type: params[:commentable_type])
    end
    redirect_to posts_path
  end
end
