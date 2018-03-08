Rails.application.routes.draw do

 


 #Modele STATIC_PAGES
 root 'static_pages#home'
 get 'static_pages/about'

  #Modele ORDER
  get 'orders/index'
  get 'orders/new'
  post 'orders/new' #pour faire fonctionner stripe

  
#Modele CART
  resources :carts, only: [:index, :remove, :show] do #route qui permet de créer un id dans l'url carts/remove ce qui permet de trouver le bon item à supprimer
  	post 'carts/remove', on: :member
  end


#Modele USERS
  get 'users/administrator'
  devise_for :users
  resources :users, :only => [:show]
  


#Modele ITEMS
  resources :items do #route qui permet de créer un id dans l'url add_cart ce qui permet de trouver le bon item à ajouter
    post "add_cart", on: :member
  end

  


  
end
