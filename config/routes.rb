Rails.application.routes.draw do

  root 'posts#index'

  get '/about',     to: 'welcome#about'
  get 'welcome/login'

  get  '/signup',   to: 'users#new'
  post '/signup',   to: 'users#create'
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get     '/new',   to: 'posts#new'
  post    '/new',   to: 'posts#create'

  resources :users, only: [:create, :new, :edit, :update, :show]
  resources :posts, only: [:new, :create, :index]
end
