class PostsController < ApplicationController
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
    @post.save
    session[:author] = @post.author
    flash[:notice] = "Post has been added!"
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    @post.save
    flash[:notice] = "Post has been updated!"
    redirect_to posts_path
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
end
