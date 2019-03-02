Rails.application.routes.draw do
  resources :random_beers
  root 'random_beers#show'
end
