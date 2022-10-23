# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NextLaunchesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/next_launches').to route_to('next_launches#index')
    end

    it 'routes to #upcoming' do
      expect(get: '/next_launches/upcoming').to route_to('next_launches#upcoming')
    end
  end
end
