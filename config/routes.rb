Rails.application.routes.draw do
  root to: 'pages#home'





  get 'dashboards/', to: "dashboards#dashboard_home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
