# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    text { 'MyText' }
    user_id { create(:user).id }
    event_id { create(:event).id }
  end
end
