# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  subject(:setup_comments) { Random.rand(1..10).times { create(:comment) } }

  describe 'GET api/v1/comments' do
    it 'returns http status 200 (ok)' do
      get api_v1_comments_path
      expect(response).to have_http_status(:ok)
    end

    it 'returns all comments in the database' do
      setup_comments
      get api_v1_comments_path
      json_response = JSON.parse(response.body)

      expect(json_response.size).to eq Comment.count
    end
  end

  describe 'POST api/v1/comments' do
    subject(:successfull_post_request) do
      post api_v1_comments_path, params: { comment: attributes_for(:comment) }
    end

    context 'when sending valid params' do
      it 'returns http status 201 (created)' do
        successfull_post_request
        expect(response).to have_http_status(:created)
      end

      it 'changes the number of Comments' do
        expect { successfull_post_request }.to change(Comment, :count).by(1)
      end
    end

    context 'when sending invalid params' do
      it 'returns http status 422 (unprocessable_entity)' do
        post api_v1_comments_path, params: { comment: { text: nil } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
