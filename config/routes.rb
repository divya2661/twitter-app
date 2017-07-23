Rails.application.routes.draw do
  get 'static/new'

  get 'sessions/new'

  resources :users
  root 'static#new'
  get '/signup', to: 'users#new'
  get '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
