Rails.application.routes.draw do
  get 'home', action: :home, controller: 'application'
  get 'about', action: :about, controller: 'application'
  get 'portfolio', action: :portfolio, controller: 'application'
  get 'contact', action: :contact, controller: 'application'
end
