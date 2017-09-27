Rails.application.routes.draw do

  root 'posts#all_thumbnails'

  get 'posts/all_thumbnails'
  get 'posts/collections'

  resources :posts
  resources :collections

end
