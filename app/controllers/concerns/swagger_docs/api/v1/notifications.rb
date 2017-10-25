module SwaggerDocs::Api::V1::Notifications
  extend ActiveSupport::Concern
  include Swagger::Blocks

  included do
    swagger_path '/api/v1/notifications' do
      operation :post do
        key :summary, 'Create notification'
        # key :description, 'Returns a single pet if the user has access'
        parameter do
          key :name, :content
          key :description, 'Notification content'
          key :required, true
          key :type, :string
        end
        parameter do
          key :name, :enqueue_at
          key :description, 'Notification content'
          key :required, true
          key :type, :string
        end

        parameter do
          key :name, 'access-token'
          key :description, 'Hash'
          key :required, true
          key :type, :string
        end

        parameter do
          key :name, 'client'
          key :description, 'Hash'
          key :required, true
          key :type, :string
        end

        parameter do
          key :name, 'uid'
          key :description, 'User email'
          key :required, true
          key :type, :string
        end




        response 200 do
          key :description, 'notification created'
        end

        response 422 do
          key :description, 'notification creation error'
        end
      end
    end
  end



end
