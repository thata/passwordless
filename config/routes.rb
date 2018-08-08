# frozen_string_literal: true

Passwordless::Engine.routes.draw do
  get '/sign_in',
    to: 'passwordless/sessions#new',
    as: :sign_in

  post '/sign_in',
    to: 'passwordless/sessions#create'

  get '/sign_in/:token',
    to: 'passwordless/sessions#show',
    as: :token_sign_in

  match '/sign_out',
    to: 'passwordless/sessions#destroy',
    via: %i[get delete],
    as: :sign_out
end
