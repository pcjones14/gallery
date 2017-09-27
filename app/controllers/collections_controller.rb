class CollectionsController < ApplicationController
  def index
  	@all_collections = Collection.all
  end
end
