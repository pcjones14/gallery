Collection.destroy_all

zion = Collection.create(title: "Zion")

mountains = Collection.create(title: "Mountains")

love = Collection.create(title: "Love")

Post.destroy_all

Post.create(
  title: "The Subway",
  caption: "This place is just as magical as all the pictures make it seem.",
  photo: File.new("#{Rails.root}/public/images/subway.jpg"),
  collection: zion,
  created_at: 0
)

Post.create(
  title: "Narrows Rescue",
  caption: "The best tasting humble pie comes from these two awesome guys that carried me four miles out of the Narrows after ruining my ankle.",
  photo: File.new("#{Rails.root}/public/images/narrows.jpg"),
  collection: zion,
  created_at: 1
)

Post.create(
  title: "Six Months",
  caption: "She makes me the happiest man in the world.",
  photo: File.new("#{Rails.root}/public/images/sixmonths.jpg"),
  collection: love,
  created_at: 2
)

Post.create(
  title: "Kolob Reservoir",
  caption: "Love that smile.",
  photo: File.new("#{Rails.root}/public/images/kolob.jpg"),
  collection: mountains,
  created_at: 3
)

Post.create(
  title: "Aspens",
  caption: "Sunset in the Tushars.",
  photo: File.new("#{Rails.root}/public/images/aspens.jpg"),
  collection: mountains,
  created_at: 4
)

Post.all.each do |post|
  post.created_at = (rand*10).days.ago
  post.save
end