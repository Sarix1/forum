Rails.application.routes.draw do
  root 'home#index'
  get '/boards', to: 'boards#index', as: :boards
  get '/board/:id', to: 'boards#show', as: :board
  get '/topic/:id', to: 'topics#show', as: :topic
end
