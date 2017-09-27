Post.destroy_all

Post.create(
  title: "The Subway",
  caption: "This place is just as magical as all the pictures make it seem.",
  photo: File.new("#{Rails.root}/public/images/subway.jpg")
)

Post.create(
  title: "Narrows Rescue",
  caption: "The best tasting humble pie comes from these two awesome guys that carried me four miles out of the Narrows after ruining my ankle.",
  photo: File.new("#{Rails.root}/public/images/narrows.jpg")
)

Post.create(
  title: "Six Months",
  caption: "She makes me the happiest man in the world.",
  photo: File.new("#{Rails.root}/public/images/sixmonths.jpg")
)

Post.create(
  title: "Kolob Reservoir",
  caption: "Love that smile.",
  photo: File.new("#{Rails.root}/public/images/kolob.jpg")
)

Post.create(
  title: "Aspens",
  caption: "Sunset in the Tushars.",
  photo: File.new("#{Rails.root}/public/images/aspens.jpg")
)