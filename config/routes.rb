WhatKeyV003::Application.routes.draw do
  resources :notes
  get "static_pages/home"
  devise_for :users
  resources :users

  root 'static_pages#home'
end
