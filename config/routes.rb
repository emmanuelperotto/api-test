# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    api_version(module: 'V1', path: { value: 'v1' }) do
      resources :comments
      resources :events
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
