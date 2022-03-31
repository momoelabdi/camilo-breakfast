Rails.application.routes.draw do
  authenticated :user do
    root to: 'pages#home'
  end
  unauthenticated :user do
    devise_scope :user do
      get '/' => 'devise/sessions#new'
    end
  end
  devise_for :users
  resources :bakeries, only: [:index, :show] do
    resources :orders, only: [:new, :create, :show]
  end

  get "/my_orders", to: "orders#my_orders"
end
