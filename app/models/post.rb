class Post < ApplicationRecord
  has_attached_file :photo, styles: {thumb: ["250x250#"], small: ["300x300"], medium: ["400x400"], large: ["600x600"], xlarge: ["800x800"]}, default_url: "/murray.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
