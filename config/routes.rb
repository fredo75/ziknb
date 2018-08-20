Rails.application.routes.draw do
  get 'locations_controller/index'
  get 'locations_controller/show'
  get 'locations_controller/new'
  get 'locations_controller/create'
  get 'locations_controller/destroy'
  get 'instruments', to: 'instruments#index'
  get 'instruments/:id', to: 'instruments#show'
  get 'instruments/new'
  get 'instruments/create'
  get 'instruments/update'
  get 'instruments/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
