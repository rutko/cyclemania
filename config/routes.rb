# frozen_string_literal: true

Rails.application.routes.draw do
  resources :scouts
  root 'home#index'
  resources :posts

  resources :user_posts
end
