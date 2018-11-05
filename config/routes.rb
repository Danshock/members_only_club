Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'
  
  root 'welcome#index'

  resource :users
  resource :posts
end
