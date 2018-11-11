Rails.application.routes.draw do
  # get "categories/new"
  # get "categories/show"
  # get "categories/index"
  root "pages#home2"

  devise_for :admins
  resources :posts, :categories, :comments
  resources :admins, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
