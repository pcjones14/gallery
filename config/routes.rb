Rails.application.routes.draw do

  root 'dummy#index'

  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/view'
  get 'posts/thumbnails'  
  get 'dummy/index'

  resources :posts

end
