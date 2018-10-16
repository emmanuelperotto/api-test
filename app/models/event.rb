# frozen_string_literal: true

class Event < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
