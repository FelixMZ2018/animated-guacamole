Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dashboards, only:[:index]
  resources :user_preferences,only: [:edit, :update]
  resources :items, only:[:delete, :new, :create]
  resources :trips, only:[:delete, :new, :create,:index]
  resources :temperatures, only:[:new]

  get 'daily', :to => 'dashboards#daily'
  get 'forecast', :to => 'dashboards#forecast'
  get 'preferences', :to => 'user_preferences#edit'
  post 'preferences', :to => 'user_preferences#update'
  get 'wardrobe', :to => 'items#index'
  get 'wardrobe/new', :to => 'items#new'
  post 'wardrobe', :to => 'items#create'
  delete '/wardrobe/:id', to: 'items#destroy', as: 'delete'
  post 'temperatures/new', :to => 'temperatures#set_breakpoints'
  delete '/trips/:id', :to => 'trips#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
