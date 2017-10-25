require 'rails_helper'

RSpec.describe Api::V1::NotificationsController, type: :controller do

  it 'Test' do
    user_params = {
      email: Faker::Internet.email,
      password: '12345678',
      password_confirmation: '12345678'
    }

    user = User.create(user_params)

    expect(user.notifications.count).to eq(0)

    # request.headers.merge! user.create_new_auth_token

    token = user.create_new_auth_token.slice('access-token', 'client', 'uid')

    post :create, params: {content: 'My Text', enqueue_at: DateTime.now}.merge(token)

    p response.body

    expect(user.notifications.count).to eq(1)

  end

end
