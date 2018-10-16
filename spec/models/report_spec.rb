# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Report, type: :model do
  context 'when testing associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:comment) }
  end
end
