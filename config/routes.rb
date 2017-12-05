Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create]
  
  get '/posts/:id/description', to: 'posts#description'
  get '/posts/:id/body', to: 'posts#body'
end
