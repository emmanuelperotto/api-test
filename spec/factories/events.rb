# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    name { 'MyString' }
    description { 'MyString' }
    lat { -15.78347475 }
    lng { -47.89920526355173 }
  end
end
