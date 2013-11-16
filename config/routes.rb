WhatKeyV003::Application.routes.draw do
  get "notes/index"
  get "notes/show"
  get "notes/new"
  get "notes/edit"
  get "static_pages/home"
  devise_for :users

  root 'static_pages#home'
end
