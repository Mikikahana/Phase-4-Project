Rails.application.routes.draw do
  resources :menu_items
  resources :orders
  resources :restaurants
  resources :drivers
  resources :customers

  get '/hello', to: 'application#hello_world'

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
