# frozen_string_literal: true

class Event < ApplicationRecord
  # Associations
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
