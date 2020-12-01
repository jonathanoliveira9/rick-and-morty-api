# frozen_string_literal: true

# main controller
class Api::V1::CharactersController < Api::V1::ApiController
  include RickMorty::Api

  before_action :set_character, only: %i[show appears]

  def show
    @character ? api_success(@character) : api_not_found
  end

  def appears
    episode_id = @character['episode'].first.tr('^0-9', '')
    episode = by_id('episode', episode_id)
    return api_not_found if episode['error'].present?

    result = { first_appear: format_date(episode['air_date']) }
    result = result.merge(@character) if character_params[:details]

    api_success(result)
  end

  def character_params
    params.permit(:character_id, :id, :details)
  end

  private

  def set_character
    @character = by_id('character', character_params[:id] || character_params[:character_id])
    return api_not_found if @character['error'].present?

    @character
  end

  def format_date(date)
    Date.parse(date)&.strftime('%d/%m/%Y')
  end
end
