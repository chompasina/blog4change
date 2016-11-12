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
      check_status?
      flash[:alert] = "Post created"
      session[:post_id] = @post.id
      redirect_to root_path
    else
      flash[:failure] = @post.errors.full_messages.join(', ')
      render :new
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  private
  
  def check_status?
    if params['status'] == "1"
      @post.update(status: "published")
    end
  end
  
  def post_params
    params.require(:post).permit(:title, :author, :body, :status)
  end
end