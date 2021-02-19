Rails.application.routes.draw do
  # get 'comments/index'
  # get 'comments/new'
  # get 'comments/create'
  # get 'comments/show'
  # get 'comments/edit'
  # get 'comments/update'
  # get 'comments/destroy'

  root to: 'comments#index'
  resources :comments
end
