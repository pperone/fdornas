Rails.application.routes.draw do
  namespace :admin do
    resource :home, only: [:show, :edit, :update]
    resource :about, only: [:show, :edit, :update]
    resource :portfolio, only: [:show, :edit, :update]
    resource :contact, only: [:show, :edit, :update]
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home', action: :home, controller: 'application'
  get 'about', action: :about, controller: 'application'
  get 'portfolio', action: :portfolio, controller: 'application'
  get 'contact', action: :contact, controller: 'application'
end
