Rails.application.routes.draw do


  get 'carts/add'

  get 'carts/remove'

  get 'carts/show'

  post 'items/add_cart'

  devise_for :users

  resources :items do
    post "add_cart", on: :member
  end

  root 'static_pages#home'


  
end
