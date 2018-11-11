Rails.application.routes.draw do
  get "categories/new"
  get "categories/show"
  get "categories/index"
  devise_for :admins
  resources :posts, :categories, :comments
  resources :admins, only: [:show]
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
