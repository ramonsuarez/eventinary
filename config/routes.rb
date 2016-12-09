Rails.application.routes.draw do
  get 'organizers/new'

  get 'organizers/create'

  get 'organizers/show'

  get 'organizers/edit'

  get 'organizers/update'

  resources :events
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
end
