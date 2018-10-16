# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when testing validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_confirmation_of :password }

    it { is_expected.to have_secure_password }
  end

  context 'when testing associations' do
    it { is_expected.to have_many(:comments).dependent(:nullify) }
    it { is_expected.to have_many(:events).through(:comments) }
    it { is_expected.to have_many(:reports).dependent(:nullify) }
  end
end
