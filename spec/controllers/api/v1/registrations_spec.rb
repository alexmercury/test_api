require 'rails_helper'

RSpec.describe Api::V1::RegistrationsController, type: :request do

  describe 'Create User' do
    let(:user_params) do
      {
        email: Faker::Internet.email,
        password: '12345678',
        password_confirmation: '12345678'
      }
    end


    it 'Test' do
      expect(User.count).to eq(0)
      post '/api/v1/auth', params: user_params
      expect(response.content_type).to eq('application/json')
      expect(response).to have_http_status(:ok)
      expect(User.count).to eq(1)

      post '/api/v1/auth/sign_in', params: user_params.slice(:email, :password)

      access_token = response.headers['access-token']
      client = response.headers['client']
      uid = response.headers['uid']



      delete '/api/v1/auth', params: {client: client, uid: uid, 'access-token': access_token}
      p response.body
      expect(User.count).to eq(0)
    end

    it 't2' do



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