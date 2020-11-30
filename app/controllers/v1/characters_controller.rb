# frozen_string_literal: true

# characters controller
class Api::V1::CharactersController < Api::V1::ApiController
  before_action :set_character, only: %i[show appears]

  def show
    @character ? api_success(@character) : api_not_found
  end

  def character_params
    params.permit(:id)
  end

  private

  def set_character
    @character = by_id('character', character_params[:id] || character_params[:character_id])
    return api_not_found('não foi encontrado') if @character['error'].present?

    @character
  end
end
