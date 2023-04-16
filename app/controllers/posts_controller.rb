class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def show
    @post = Post.find_by(id: params[:id])
    render :show
  end

  def create
    @post = Post.new(
      location: location = params[:location]
    )
    @post.save
    render :show
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.location = params[:location] || @post.location

    @post.save
    render :show
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render json: {message: "post as been destroyed successfully"}
  end

end
