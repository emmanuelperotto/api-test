# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    text { 'MyText' }
    user { nil }
    event { nil }
  end
end
