Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  resources :admins, only: [:show]
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
