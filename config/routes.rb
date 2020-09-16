Rails.application.routes.draw do
  root 'home#index'
  get '/boards/:id', to: 'boards#show', as: :board
end
