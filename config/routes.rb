Rails.application.routes.draw do
  root "top#index"
  devise_for :users
  resources :posts do
  end  
end
