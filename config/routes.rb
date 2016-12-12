Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :update, :edit]
  root to: 'pages#home'
  resources :pages, only: [:home]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organizations
  resources :events do
    resources :bookings
  end
end
