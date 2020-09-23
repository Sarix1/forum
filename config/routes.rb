Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/index'
  get 'posts/new'
  root 'home#index'
 # get '/boards',    to: 'boards#index', as: :boards
 # get '/board/:id', to: 'boards#show',  as: :board
 # get '/topic/:id', to: 'topics#show',  as: :topic
  
  resources :users
  resources :boards
  resources :topics
  resources :posts
  
  #resources :topics do
  #  resources :posts
  #end
end
