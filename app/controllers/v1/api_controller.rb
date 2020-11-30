# frozen_string_literal: true

# main controller
class Api::V1::ApiController < ActionController::Base
  protected

  def api_success(data)
    render json: data, status: :ok
  end

  def api_not_found(data = {})
    render json: { error: data }, status: :not_found
  end
end
