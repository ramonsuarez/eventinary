Rails.application.routes.draw do
  resources :events
  root 'pages#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
end
