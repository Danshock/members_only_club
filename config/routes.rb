Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'
  get 'welcome/posts'
  get 'welcome/login'

  get '/signup',    to: 'users#new'
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resource :users
  resource :posts
end
