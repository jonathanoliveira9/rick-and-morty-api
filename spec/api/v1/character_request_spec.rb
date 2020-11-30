require 'rails_helper'

RSpec.describe 'Characters', type: :request do
  context '#appears' do
    it 'quando achar' do
      get '/api/v1/characters/1/appears'
      expect(response).to have_http_status(:ok)
    end
  end
end
