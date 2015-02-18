Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users
end
