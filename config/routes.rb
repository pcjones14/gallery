Rails.application.routes.draw do

  root 'posts#all_thumbnails'

  get 'posts/all_thumbnails'
  get 'posts/collections'
  get 'login', to: 'auth#index'
  match 'login', to: 'auth#login', via: :post
  get 'logout', to: 'auth#logout'

  resources :posts
  resources :collections

end
