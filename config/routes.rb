Rails.application.routes.draw do
devise_for :users
resources :users
resources :users, only: [:show]
resources :books
get"home/about"
resources :post_images, only: [:new, :create, :index, :show]
root 'post_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
