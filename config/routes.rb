# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :employees, controllers: { registrations: 'registrations' }
  root 'attendances#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :employees
  resources :stores
  resources :admin
  resources :reports
  resources :attendances
  # resources :users
  # get '/products', to: 'products#index'
  get 'attendances_by_day', to: 'attendances_by_day#index'
  get 'absences_reports_by_month', to: 'absences_reports_by_month#index'

end
