Rails.application.routes.draw do
  get 'instruments/index'
  get 'instruments/:id', to: 'instruments#show'
  get 'instruments/new'
  get 'instruments/create'
  get 'instruments/update'
  get 'instruments/edit'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
