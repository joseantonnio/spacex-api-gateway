# frozen_string_literal: true

# Base entities class
class Entity
  def initialize(params = {})
    params.each { |key, value| send "#{key}=", value }
  end
end
