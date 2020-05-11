Rails.application.routes.draw do

  root 'top_pages#home'
  get '/reserve', to: 'top_pages#reserve'
  get '/home', to: 'top_pages#home'
  get '/trainer', to: 'top_pages#trainer'
  get '/price', to: 'top_pages#price'
  get '/store', to: 'top_pages#store'
  get '/help', to: 'top_pages#help'

  get '/signup', to: 'users#new'

  resources :users
end
