# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'when testing validations' do
    it { is_expected.to validate_presence_of :text }
  end

  context 'when testing associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:event) }
  end

  describe '.reported' do
    it 'returns all reported comments' do
      reported_comments = Comment.where(reported: true)
      expect(reported_comments.size).to eq(Comment.reported.count)
    end

    it 'has to be greater than or equal to zero' do
      expect(Comment.reported.count).to be >= 0
    end
  end
end
