Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'stores#home'

  resources :stores do
    resources :items do
      resources :comments
    end
  end 
  # get 'stores', to: 'stores#index'
  # get 'stores/new', to: 'stores#new'
  # post 'stores', to: 'stores#create'
  # get 'stores/:id', to: 'stores#show'
  # get 'stores/:id/edit', to: 'stores#edit'
  # patch 'stores/:id', to: 'stores#update'
  # put 'stores/:id', to: 'stores#update'
  # delete 'stores/:id', to: 'stores#destroy'

  # get 'stores/:store_id/items/', to: 'items#index'
  # get 'stores/:store_id/items/new', to: 'items#new'
  # post 'stores/:store_id/items/', to: 'items#create'
  # get 'stores/:store_id/items/:id', to: 'items#show'
  # get 'stores/:store_id/items/:id', to: 'items#edit'
  # patch 'stores/:store_id/items/:id', to: 'items#update'
  # put 'stores/:store_id/items/:id', to: 'items#update'
  # delete 'stores/:store_id/items/:id', to: 'items#destroy'
  
end