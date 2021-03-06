class ApidocsController < ActionController::Base
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    # info do
    #   key :version, '1.0.0'
    #   key :title, 'Swagger Petstore'
    #   key :description, 'A sample API that uses a petstore as an example to ' \
    #                     'demonstrate features in the swagger-2.0 specification'
    #   key :termsOfService, 'http://helloreverb.com/terms/'
    #   contact do
    #     key :name, 'Wordnik API Team'
    #   end
    #   license do
    #     key :name, 'MIT'
    #   end
    # end
    # tag do
    #   key :name, 'pet'
    #   key :description, 'Pets operations'
    #   externalDocs do
    #     key :description, 'Find more info here'
    #     key :url, 'https://swagger.io'
    #   end
    # end
    # key :host, 'petstore.swagger.wordnik.com'
    # key :basePath, '/api'
    # key :consumes, ['application/json']
    # key :produces, ['application/json']
  end

  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    Api::V1::NotificationsController,
    Api::V1::RegistrationsController,
    self,
  ].freeze

  def index
    if request.formats.first.symbol == :json
      render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
    else
      render :index
    end
  end

end
