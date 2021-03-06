class PostsController < ApplicationController

  def index
    redirect_to root_path
    @all_posts = Post.all
  end

  def show
    @post = Post.find(params[:id])

    @next = Post.order(created_at: :asc).where("created_at > ?", @post.created_at).first
    @previous = Post.order(created_at: :asc).where("created_at < ?", @post.created_at).last

  end

  def new
    authenticate()
    @post = Post.new
    @options_array = []
    Collection.all.each do |category|
      @options_array += [[category.title, category.id]]
    end
  end

  def create
    authenticate()
    if Post.create!(post_params)
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def edit
    authenticate()
    @post = Post.find(params[:id])
    @options_array = []
    Collection.all.each do |category|
      @options_array += [[category.title, category.id]]
    end
  end

  def update
    authenticate()
    post = Post.find(params[:id])
    if post.update(post_params)
      flash[:success] = "Photo \"#{params[:post][:title]}\" successfully updated"
      redirect_to root_path
    end
  end

  def destroy
    authenticate()
    post = Post.find(params[:id])
    post_title = post.title
    if post.destroy
      flash[:success] = "Photo \"#{post_title}\" successfully deleted"
      redirect_to root_path
    end
  end

  def all_thumbnails
    @posts = Post.all.order(created_at: :desc)
  end

  def collections
    @posts = Post.collection_is(params[:collection_id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :caption, :photo, :collection_id)
  end

end
