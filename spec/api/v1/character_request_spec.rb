require 'rails_helper'

RSpec.describe 'Characters', type: :request do
  let(:character_id) { 1 }
  let(:character_id_nonexistent ) { 1203 }

  context '#show' do
    it 'quando achar' do
      get "/api/v1/characters/#{character_id}"

      expect(response).to have_http_status(:ok)
      expect(response.body).to match_json_schema('character')
    end

    it 'verificar quando não é para encontrar' do
      get "/api/v1/characters/#{character_id_nonexistent}"

      expect(response).to have_http_status(:not_found)
    end
  end

  context '#appears' do
    it 'quando achar' do
      get "/api/v1/characters/#{character_id}/appears"
      expect(response).to have_http_status(:ok)

      result_json = { first_appear: '02/12/2013' }.to_json
      response.body.match? result_json
    end

    it 'verificar quando não é para encontrar' do
      get "/api/v1/characters/#{character_id_nonexistent}/appears"

      expect(response).to have_http_status(:not_found)
    end
  end
end
