# frozen_string_literal: true

module Spacex
  # SpaceX API Connection
  class Connection
    def get(path)
      connection.get(path).body
    end

    private

    def connection
      Faraday.new(
        url: "#{ENV.fetch('SPACEX_API_URL')}/#{ENV.fetch('SPACEX_API_VERSION')}",
        headers: { 'Content-Type' => 'application/json' }
      ) do |connection|
        connection.response :json, content_type: /\bjson$/, parser_options: { object_class: OpenStruct }
        connection.use Faraday::Response::RaiseError
      end
    end
  end
end
