Rails.application.routes.draw do
  get 'items/index'

  get 'items/new'

  get 'items/show'

  get 'items/edit'

  get 'static_pages/home'

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
