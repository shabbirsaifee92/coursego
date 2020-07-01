Rails.application.routes.draw do
  devise_for :users
  resources :courses
  get 'home/index'
  root 'home#index'
  get 'home/activity', as: :activity
  resources :users, only: [:index]
end
