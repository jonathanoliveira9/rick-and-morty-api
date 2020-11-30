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

  # HACK: in this filter you have a scope on model
  def apply_filters(objects, *scopes)
    scopes.each do |scope|
      param_name = scope.to_s.sub('by_', '')
      next unless params[param_name] && objects.respond_to?(scope)

      objects =
        if params[param_name].to_s != 'true' && params[param_name].to_s != 'false'
          objects.send(scope, params[param_name])
        else
          objects.send(scope)
        end
    end

    objects
  end
end
