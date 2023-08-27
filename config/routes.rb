# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, {}

  # Dashboard
  namespace :dashboard do
    get '/' => 'home#index'

    resources :annotations, only: [:index]
    resources :certificates,only: [:index, :show]
    resources :courses, only: [:index, :show]
    resources :profiles, only: [:edit, :update]
  end
end
