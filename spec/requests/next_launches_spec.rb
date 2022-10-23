# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/next_launches', type: :request do
  let(:valid_attributes) do
    {
      "name": "Starlink 4-36 (v1.5)",
      "patch": "https://images2.imgbox.com/a9/9a/NXVkTZCE_o.png",
      "liftoff": "2022-10-20T14:50:00.000+00:00",
      "vehiacle": {
        "name": "Falcon 9",
        "image": "https://farm1.staticflickr.com/929/28787338307_3453a11a77_b.jpg"
      },
      "launchpad": {
        "name": "CCSFS SLC 40"
      }
    }
  end

  let(:valid_headers) do
    {
      "Content-Type": "application/json"
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      allow(SpacexGateway.new).to(receive(:launch).and_return([Launch.new(valid_attributes)]))
      get next_launches_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /upcoming' do
    it 'renders a successful response' do
      allow(SpacexGateway.new).to(receive(:launch).and_return(Launch.new(valid_attributes)))
      get upcoming_next_launches_url, as: :json
      expect(response).to be_successful
    end
  end
end
