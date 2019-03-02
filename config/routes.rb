Rails.application.routes.draw do
  devise_for :users
  resources :random_beers
  resources :my_beers
  root 'random_beers#show'
end
