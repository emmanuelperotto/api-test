# frozen_string_literal: true

# User model
class User < ApplicationRecord
  # Fields
  has_secure_password

  # Validations
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
