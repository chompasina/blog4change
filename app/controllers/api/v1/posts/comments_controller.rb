class Api::V1::Posts::CommentsController < ApplicationController
  respond_to :json, :html
  
  def show
    @comments = Post.find_by(post_params).comments
    respond_with @comments
  end

  private
    def post_params
      params.permit(:id)
    end
end