class PostsController < ApplicationController
  before_action :authorize, only: [:destroy, :confirm_delete]

  def index
    @posts = Post.all
  end

  def published
    @posts = Post.where(published: true)
    render 'index'
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(author: session[:author])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      session[:author] = @post.author
      flash[:notice] = 'Post has been added!'
      redirect_to posts_path
    else
      render action: :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = 'Post has been updated!'
      redirect_to posts_path
    else
      render action: :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def confirm_delete
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :author, :body, :published)
  end

  def authorize
    http_basic_authenticate_or_request_with name: 'admin', password: 'pasio'
  end
end
