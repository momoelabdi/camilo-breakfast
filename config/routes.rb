Rails.application.routes.draw do
  authenticated :user do
    root to: 'pages#home'
  end
  unauthenticated :user do
    devise_scope :user do
      get '/' => 'devise/sessions#new'
    end
    devise_for :users
  end
  resources :bakeries, only: [:index, :show]
  post "/add_to_basket", to: "orders#add_to_basket"
  get "/my_orders", to: "orders#my_orders"
end
