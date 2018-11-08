Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'
  get 'welcome/posts'
  get 'welcome/login'

  get  '/signup',   to: 'users#new'
  post '/signup',   to: 'users#create'
  
  get '/login',     to: 'sessions#new'
  #post '/login',    to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:create, :new, :edit, :update, :show]
  #resources :posts
end
