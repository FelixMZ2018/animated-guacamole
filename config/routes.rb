Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dashboards, only: [:show, :index]

  get 'forecast', :to => 'dashboards#forecast'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
