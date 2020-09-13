Rails.application.routes.draw do
  resources :users
  resource :session

  get 'home/index'
  root 'home#index'
end
