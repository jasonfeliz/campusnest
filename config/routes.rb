# frozen_string_literal: true

Rails.application.routes.draw do
  resources :userinterests
  resources :replies, except: %i[new edit]
  resources :discussions, except: %i[new edit]
  resources :interests, except: %i[new edit]
  resources :colleges, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  post '/check-username' => 'users#checkusername'
  post '/check-email' => 'users#checkemail'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
