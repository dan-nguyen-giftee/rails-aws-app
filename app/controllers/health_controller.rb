class HealthController < ApplicationController
  # Skip any authentication or authorization
  skip_before_action :verify_authenticity_token, if: :json_request?
  
  def show
    # Simple health check that always returns 200
    render json: { 
      status: 'ok', 
      timestamp: Time.current.iso8601,
      version: Rails.version,
      environment: Rails.env
    }, status: :ok
  end

  def check
    # Alternative endpoint that just returns 200 with minimal response
    render plain: 'OK', status: :ok
  end

  private

  def json_request?
    request.format.json?
  end
end
