Rails.application.routes.draw do

  root 'top_pages#home'
  get 'top_pages/reserve'
  get 'top_pages/home'
  get 'top_pages/trainer'
  get 'top_pages/price'
  get 'top_pages/store'
  get 'top_pages/help'
end
