Rails.application.routes.draw do
  resources :users
  root 'application#hello'
  get  '/signup',  to: 'users#new'
  get  '/signup',  to: 'users#create'
end
