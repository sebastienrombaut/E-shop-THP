Rails.application.routes.draw do

  get 'orders/new'
  post 'orders/new' #pour faire fonctionner stripe

  get 'static_pages/about'

  resources :carts, only: [:index, :remove, :show] do #route qui permet de créer un id dans l'url carts/remove ce qui permet de trouver le bon item à supprimer
  	post 'carts/remove', on: :member
  end

  devise_for :users

  resources :items do #route qui permet de créer un id dans l'url add_cart ce qui permet de trouver le bon item à ajouter
    post "add_cart", on: :member
  end

  root 'static_pages#home'


  
end
