Rails.application.routes.draw do

  resources :promonewsmultims
  resources :comments
  resources :importantnews
  resources :promotions
  resources :pathogens
  resources :diseases
  resources :taxonomic_tables
  resources :multims
  resources :cultures
  use_doorkeeper

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  mount APINAME::Root => '/apiname'


  devise_for :users
  root to: "home#landing"

  get 'home/landing'
  get 'home/welcome'

  get 'macro', to: 'home#macroMenu', as: :macro
  get 'menu' ,to: 'home#menu', as: :menu
  get 'reports', to: 'home#reports', as: :reports
  get 'videoAppsco', to: 'home#videoAppsco', as: :videoAppsco

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
