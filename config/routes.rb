Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'homes/about'
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:new, :create, :index, :show, :edit]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
