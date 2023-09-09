module Restable::Authentication
  extend ActiveSupport::Concern

  included do
    skip_before_action :verify_authenticity_token

    before_action :authenticate_api_credentials!

    protected

    def authenticate_api_credentials!
      authenticate_token || authenticate_basic || render_unauthorized
    rescue StandardError
      render_unauthorized
    end

    def authenticate_token
      authenticate_with_http_token do |token|
        authenticate_api_credentials(token: token)
      end
    end

    def authenticate_basic
      authenticate_with_http_basic do |username, _password|
        authenticate_api_credentials(token: username)
      end
    end

    def authenticate_api_credentials(token:)
      @api_credentials = credential_model.find_by_token(
        token.encode('UTF-8', 'ISO-8859-1', invalid: :replace, undef: :replace, replace: '')
      )
    end

    def render_unauthorized
      render json: { error: 'Invalid API credentials.' }, status: :unauthorized
    end
  end
end
