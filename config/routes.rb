# frozen_string_literal: true

Rails.application.routes.draw do
  resources :interests, except: %i[new edit]
  resources :colleges, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  get '/users' => 'users#index'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
