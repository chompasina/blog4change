class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:alert] = "Post created"
      session[:post_id] = @post.id
      redirect_to root_path
    else
      flash[:failure] = @post.errors.full_messages.join(', ')
      render :new
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :author, :body)
  end
end