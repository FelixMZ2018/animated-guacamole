Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dashboards
  resources :user_preferences,only: [:edit, :update]

  get 'forecast', :to => 'dashboards#forecast'
  get 'preferences', :to => 'user_preferences#edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
