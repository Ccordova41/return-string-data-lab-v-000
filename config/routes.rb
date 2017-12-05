Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create]

  get '/products/:id/description', to: 'posts#description'
  get '/products/:id/inventory', to: 'posts#inventory'
end
