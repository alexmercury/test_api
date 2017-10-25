class Api::V1::NotificationsController < ::Api::BaseController

  before_action :authenticate_api_v1_user!

  include SwaggerDocs::Api::V1::Notifications

  def create
    notification = current_api_v1_user.notifications.new(notification_params)
    if notification.save
      render status: :ok, json: {status: 'success'}
    else
      render status: 422, json: {status: 'error'}
    end


  end

  private

  def notification_params
    params.permit(:content, :enqueue_at)
  end

end
