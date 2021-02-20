Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'comments#index'
  resources :comments
end
