require 'rails_helper'

RSpec.describe 'Characters', type: :request do
  describe '#show' do
    context 'quando achar' do
      before do
        get '/api/v1/characters/1'
      end

      it 'verificar o corpo' do
        expect(response).to have_http_status(:ok)
        expect(response.body).to match_json_schema('character')
      end
    end
  end
end
