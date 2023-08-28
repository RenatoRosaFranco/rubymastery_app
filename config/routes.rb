# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, class_name: 'User::User'

  # Landing
  root to: 'home#index'

  # Dashboard
  namespace :dashboard do
    get '/' => 'home#index'

    resources :annotations, only: [:index]
    resources :certificates,only: [:index, :show]
    resources :courses, only: [:index, :show] do
      resources :lessons, only: [:show]
    end

    resources :profiles, only: [:edit, :update]
    resources :accounts, only: [:edit, :update, :destroy]
  end
end
