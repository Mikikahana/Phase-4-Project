Rails.application.routes.draw do
  resources :menus
  resources :orders
  resources :restaurants
  resources :drivers
  resources :customers

  get '/hello', to: 'application#hello_world'
end
