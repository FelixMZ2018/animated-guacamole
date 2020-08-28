Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dashboards, only:[:index]
  resources :user_preferences,only: [:edit, :update]
  resources :items, only:[:delete]

  get 'forecast', :to => 'dashboards#forecast'
  get 'preferences', :to => 'user_preferences#edit'
  get 'wardrobe', :to => 'items#index'
  get 'wardrobe/new', :to => 'items#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
