# frozen_string_literal: true

Rails.application.routes.draw do
  resources :previous_launches, only: [:index]
  resources :next_launches, only: [:index]

  resource :previous_launches, only: [] do
    get :latest
  end

  resource :next_launches, only: [] do
    get :upcoming
  end

  root nil
end
