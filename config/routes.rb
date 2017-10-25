require 'resque_web'

Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'

  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # TODO: stub for resque-web
  root 'api/vi/registrations#new'

  namespace :api do

    namespace :v1 do

      resources :notifications, only: [:create]

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        # confirmations:      'devise_token_auth/confirmations',
        # passwords:          'devise_token_auth/passwords',
        # omniauth_callbacks: 'devise_token_auth/omniauth_callbacks',
        registrations:      'api/v1/registrations',
        # sessions:           'devise_token_auth/sessions',
        # token_validations:  'devise_token_auth/token_validations'
      }

      # resources :registrations

    end

  end

  mount ResqueWeb::Engine => '/resque_web'


  resources :apidocs, only: [:index]

end
