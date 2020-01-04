# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  root 'home#index'
  resources :posts

  resources :user_posts

  resources :users

  resources :scouts
end
