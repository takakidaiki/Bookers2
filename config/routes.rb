Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  get 'users/show'
  get 'users/edit'
  get 'home/about', as: :about
  root to: "homes#top"
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
