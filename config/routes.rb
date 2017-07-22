Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  root 'application#hello'
  get '/signup', to: 'users#new'
  get '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
