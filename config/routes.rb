Rails.application.routes.draw do
  get 'categories/index'
  get 'boards/show'
  get 'home/index'
  root 'home#index'
end
