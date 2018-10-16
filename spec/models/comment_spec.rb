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
end
