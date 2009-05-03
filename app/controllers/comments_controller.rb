class CommentsController < ApplicationController
  before_filter :load_post
  def create
    @post = Post.find(params[:post_id]) 
    @comment = @post.comments.create!(params[:comment])
    UserMailer.deliver_new_comment_notification(@comment)
    respond_to do |format|
      format.html {redirect_to comments_and_forum_path }
      format.js
    end
  end


  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy

    @comment = @post.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
            format.html {redirect_to comments_and_forum_path }
      format.xml  { head :ok }
    end
  end


  def load_post

    @post = Post.find(params[:post_id])


  end


end
