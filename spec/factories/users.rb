# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Emmanuel Perotto' }
    email { 'emmanuelperotto@gmail.com' }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
