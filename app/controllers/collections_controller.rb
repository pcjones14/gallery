class CollectionsController < ApplicationController
  def index
  	@all_collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    Collection.create(collection_params)
    redirect_to collections_path
  end

  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    Collection.find(params[:id]).update(collection_params)
    redirect_to collections_path
  end

  def destroy
    Collection.destroy(params[:id])
    redirect_to collections_path
  end

  private

  def collection_params
    params.require(:collection).permit(:title)
  end
end
