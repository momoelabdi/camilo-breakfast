Rails.application.routes.draw do
  get "/home", to: "pages#home"
  resources :charges
  authenticated :user do
    root to: 'bakeries#index'
  end
  unauthenticated :user do
    devise_scope :user do
      get '/' => 'devise/sessions#new'
    end
  end
  devise_for :users
  resources :bakeries, only: [:index, :show]
  post "/add_to_basket", to: "orders#add_to_basket"
  get "/my_orders", to: "orders#my_orders"
  get '/home', to: "pages#home"
end
