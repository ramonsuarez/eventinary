Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
<<<<<<< HEAD
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users, :controllers => { registrations: 'registrations' }
=======
  # devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

>>>>>>> b8f52d0e186c213f1b58d38d5acfbd4948b412cc
  resources :users, only: [:show, :update, :edit]
  root to: 'pages#home'
  resources :pages, only: [:home]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organizations
  resources :events do
    resources :bookings
  end
end

