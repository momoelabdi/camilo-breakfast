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
  resources :bakeries, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
