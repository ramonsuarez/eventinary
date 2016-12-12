Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  # devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  resources :users, only: [:show, :update, :edit]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organizations
  resources :events do
    resources :bookings
  end
end

