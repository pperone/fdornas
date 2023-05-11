Rails.application.routes.draw do
  namespace :admin do
    resource :home, only: [:show, :edit, :update]
    resource :about, only: [:show, :edit, :update]
    resource :gallery, only: [:show, :edit, :update]
    resource :portfolio, only: [:show, :edit, :update]
    resource :contact, only: [:show, :edit, :update]
  end

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'home', action: :home, controller: 'application'
  get 'about', action: :about, controller: 'application'
  get 'gallery', action: :gallery, controller: 'application'
  get 'gallery_item/:id', action: :gallery_item, controller: 'application'
  get 'portfolio', action: :portfolio, controller: 'application'
  get 'contact', action: :contact, controller: 'application'
  post 'create_contact_form', action: :create_contact_form, controller: 'application'

  root to: 'application#home'
end
