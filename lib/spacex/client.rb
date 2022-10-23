# frozen_string_literal: true

module Spacex
  # SpaceX API Client
  class Client
    def initialize(endpoint, action, id = nil)
      @endpoint = endpoint
      @action = action
      @id = id
    end

    def call
      send(endpoint)
    end

    private

    attr_accessor :endpoint, :action, :id

    def launches
      case action
      when :upcoming
        Spacex::Connection.new.get('launches/upcoming')
      when :next
        Spacex::Connection.new.get('launches/next')
      when :latest
        Spacex::Connection.new.get('launches/latest')
      when :past
        Spacex::Connection.new.get('launches/past')
      end
    end

    def rockets
      case action
      when :one
        return nil if id.blank?

        Spacex::Connection.new.get("rockets/#{id}")
      end
    end

    def launchpads
      case action
      when :one
        return nil if id.blank?

        Spacex::Connection.new.get("launchpads/#{id}")
      end
    end
  end
end
