# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :posts

  resources :user_posts

  resources :users

  resources :scouts

  resources :contacts, only: [:new, :create]
end
