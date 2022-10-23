# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PreviousLaunchesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/previous_launches').to route_to('previous_launches#index')
    end

    it 'routes to #latest' do
      expect(get: '/previous_launches/latest').to route_to('previous_launches#latest')
    end
  end
end
