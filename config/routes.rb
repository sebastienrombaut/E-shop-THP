Rails.application.routes.draw do


  devise_for :users
  resources :items

  root 'static_pages#home'


  
end
