Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :users, only: [:show, :update, :edit]
  root to: 'pages#home'
  resources :pages, only: [:home]
  resources :organizations
  resources :events do
    resources :bookings
  end
end

