Rails.application.routes.draw do
  root 'home#index'
  get '/boards/:id', to: 'boards#show', as: :board
  get '/boards', to: 'boards#index', as: :boards
end
