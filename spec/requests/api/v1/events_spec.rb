# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Events', type: :request do
  subject(:setup_events) do
    Random.rand(1..10).times do
      create(:event)
    end
  end

  describe 'GET api/v1/events' do
    it 'returns http status 200 (ok)' do
      get api_v1_events_path
      expect(response).to have_http_status(:ok)
    end

    it 'returns all events in the database' do
      setup_events
      get api_v1_events_path
      json_response = JSON.parse(response.body)

      expect(json_response.size).to eq Event.count
    end
  end

  describe 'POST api/v1/events' do
    subject(:successful_post_request) do
      post api_v1_events_path, params: { event: attributes_for(:event) }
    end

    context 'when sending valid params' do
      it 'returns http status 201 (created)' do
        successful_post_request
        expect(response).to have_http_status(:created)
      end

      it 'changes the number of events' do
        expect { successful_post_request }.to change(Event, :count).by(1)
      end
    end

    context 'when sending invalid params' do
      it 'returns http status 422 (unprocessable_entity)' do
        post api_v1_events_path, params: { event: { name: 1 } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
