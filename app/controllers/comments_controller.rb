class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)
     if @comment.save
       flash[:success] = "Comment saved!"
       redirect_to post_path(@post)
     else
       flash[:alert] = "Something went wrong!"
       render root_path             
     end
   end

  private
  
  def comment_params
    params.require(:comment).permit(:author, :body, :post_id)
  end
end