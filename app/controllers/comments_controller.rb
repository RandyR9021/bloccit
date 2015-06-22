class CommentsController < ApplicationController
  def create
  	@topic = Topic.find(params[:topic_id])
  	@post = Post.find(params[:post_id])
  	@comment = current_user.comments.build(params[:comment])
  	@comment.post = @post
    authorize @comment
    authorize @post
  	authorize :create, @comment, message: "You must be a registered user to comment."
  	if @comment.save
  end
end
