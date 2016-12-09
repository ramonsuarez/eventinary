Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :users, only: [:show, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
