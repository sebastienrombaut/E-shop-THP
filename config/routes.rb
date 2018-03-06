Rails.application.routes.draw do


  get 'carts/add'

  resources :carts do
  	post 'carts/remove', on: :member
  end

  



  devise_for :users

  resources :items do
    post "add_cart", on: :member
  end

  root 'static_pages#home'


  
end
