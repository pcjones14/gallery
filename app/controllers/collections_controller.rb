class CollectionsController < ApplicationController
  def index
  	@all_collections = Collection.all
    @style = ""
    if authenticated?
      @style = "margin-bottom: 100px;"
    end
  end

  def new
    authenticate
    @collection = Collection.new
  end

  def create
    authenticate
    Collection.create(collection_params)
    redirect_to collections_path
  end

  def edit
    authenticate
    @collection = Collection.find(params[:id])
  end

  def update
    authenticate
    Collection.find(params[:id]).update(collection_params)
    redirect_to collections_path
  end

  def destroy
    authenticate
    Collection.destroy(params[:id])
    redirect_to collections_path
  end

  private

  def collection_params
    params.require(:collection).permit(:title)
  end
end
