module SwaggerDocs::Api::V1::Registrations
  extend ActiveSupport::Concern
  include Swagger::Blocks

  included do
    swagger_path '/api/v1/auth' do
      operation :post do
        key :summary, 'Create new User'
        key :description, 'Create new User with password'
        parameter do
          key :name, :email
          key :description, 'User email'
          key :required, true
          key :produces, [
            'application/json'
          ]
          key :type, :string
        end
        parameter do
          key :name, :password
          key :description, 'User password'
          key :required, true
          key :produces, [
            'application/json'
          ]
          key :type, :string
        end
        parameter do
          key :name, :password_confirmation
          # key :in, :query
          key :description, 'User password'
          key :required, true
          key :produces, [
            'application/json'
          ]
          key :type, :string
        end
        response 200 do
          key :description, 'user created response'
        end
      end
    end
  end



  # cancel_user_registration GET        /auth/cancel(.:format)                    devise_token_auth/registrations#cancel
  # new_user_registration GET        /auth/sign_up(.:format)                   devise_token_auth/registrations#new
  # edit_user_registration GET        /auth/edit(.:format)                      devise_token_auth/registrations#edit
  # user_registration PATCH      /auth(.:format)                           devise_token_auth/registrations#update
  # PUT        /auth(.:format)                           devise_token_auth/registrations#update
  # DELETE     /auth(.:format)                           devise_token_auth/registrations#destroy


  # POST       /auth(.:format)                           devise_token_auth/registrations#create



end
