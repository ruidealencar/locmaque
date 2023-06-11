Rails.application.routes.draw do
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :carros
  resources :cliente_enels
  resources :cliente_cageces


  devise_scope :user do
    root to: "admin/dashboard#index"

  end 
    
end
