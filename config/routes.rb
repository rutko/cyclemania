# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :posts

  resources :user_posts
end
