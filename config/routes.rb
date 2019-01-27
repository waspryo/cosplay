Rails.application.routes.draw do
  get 'post_images_controller/index'
  get 'post_images_controller/show'
  get 'post_images_controller/new'
  root "top#index"
  devise_for :users
  resources :posts do
    resources :images, controller: "post_images"
  end  
end
