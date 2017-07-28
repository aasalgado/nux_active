Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#show", page: "home"
  
  get "/products/bras", to: "products#bras"

  get "/products/leggings", to: "products#leggings"

  get "/products/outerwear", to: "products#outerwear"

  resources :products do 
    resources :order_items, shallow: true
  end 
  resources :orders
  get "/order_items/:id/increase", to: "order_items#increase", as: :increase

  get "/order_items/:id/decrease", to: "order_items#decrease", as: :decrease 
  
  get "/checkout", to: "orders#checkout"
  
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"

  get "/users/new", to: "users#create"

  get "/pages/:page", to: "pages#show", as: :page

end
