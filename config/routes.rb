Rails.application.routes.draw do
  resources :instruments do
    resources :locations
  end

  devise_for :users
  root to: 'pages#home'





  get 'dashboards/', to: "dashboards#dashboard_home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
