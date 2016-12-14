Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  get 'profile', to: 'users#show'
  root to: 'pages#home'
  resources :pages, only: [:home]
  resources :organizations, only: [:new, :create, :edit, :update, :show ]
  resources :events do
    resources :bookings, only: [:show, :create] do
      resources :payments, only: [:new, :create]
    end
  end
end

