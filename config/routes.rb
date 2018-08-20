Rails.application.routes.draw do
  get 'instruments', to: 'instruments#index'
  get 'instruments/:id', to: 'instruments#show'
  get 'instruments/new'
  get 'instruments/create'
  get 'instruments/update'
  get 'instruments/edit'
  devise_for :users
  root to: 'pages#home'





  get 'dashboards/', to: "dashboards#dashboard_home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
