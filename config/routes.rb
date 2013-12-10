WhatKeyV003::Application.routes.draw do
  resources :notes
  devise_for :users
  resources :users

  root 'static_pages#home'

  get "static_pages/about"
  get "static_pages/contact"
end
