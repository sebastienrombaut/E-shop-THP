Rails.application.routes.draw do


  get 'carts/add'

  get 'carts/remove'

  get 'carts/show'

  devise_for :users
  resources :items

  root 'static_pages#home'


  
end
