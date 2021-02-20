Rails.application.routes.draw do
  devise_for :admins
  get 'tests/index'
  # devise_for :admins, controllers: {
  #   sessions:      'admins/sessions',
  #   passwords:     'admins/passwords',
  #   registrations: 'admins/registrations'
  # }
  # root to: 'dmins#sessions'
end
