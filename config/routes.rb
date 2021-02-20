Rails.application.routes.draw do

  root to: 'comments#index'
  resources :comments
  devise_for :admins
  # devise_for :admins, controllers: {
  #   sessions:      'admins/sessions',
  #   passwords:     'admins/passwords',
  #   registrations: 'admins/registrations'
  # }
end
