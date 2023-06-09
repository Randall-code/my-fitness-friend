# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'meal_reports#index'

  resources :meal_reports, only: %i[index show]

  resources :meals
end
