# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'admin#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :employees
  resources :stores
  resources :admin
  resources :reports
  resources :attendance
end
