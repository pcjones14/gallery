class PostsController < ApplicationController

  def index
    @all_posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      flash[:success] = "Photo \"#{params[:post][:title]}\" successfully updated"
      redirect_to posts_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    post_title = post.title
    if post.destroy
      flash[:success] = "Photo \"#{post_title}\" successfully deleted"
      redirect_to posts_path
    end
  end

  def all_thumbnails
    @posts = Post.all
  end

  def collections
    @posts = Post.collection_is(params[:collection_id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :caption, :photo)
  end

end
