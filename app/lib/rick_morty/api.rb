module RickMorty
  module Api
    BASE_URL = 'https://rickandmortyapi.com/api'.freeze

    def connection
      @connection = Faraday.new(url: BASE_URL) do |faraday|
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
      end
    end

    def get(url)
      JSON.parse((connection.get url).body)
    end
  end
end
