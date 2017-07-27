Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#show', page: 'home'
  resources :products

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'

  get "/pages/:page", to: "pages#show", as: :page
  
  get "/orders", to: "orders#show" 

  post "/add_to_order/:product_id", to: "order#add_to_order"
  

end
