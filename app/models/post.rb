class Post < ApplicationRecord

  def self.collection_is(collection)
    where(collection_id: collection)
  end

  has_attached_file :photo, styles: {thumb: ["250x250#"], xlarge: ["800x800"]}, default_url: "/murray.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  belongs_to :collection
end
