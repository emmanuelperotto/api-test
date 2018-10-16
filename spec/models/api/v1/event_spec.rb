# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'when testing validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :lat }
    it { is_expected.to validate_presence_of :lng }
  end

  context 'when testing associations' do
    it { is_expected.to have_many(:comments).dependent(:destroy) }
    it { is_expected.to have_many(:users).through(:comments) }
  end
end
