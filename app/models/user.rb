# frozen_string_literal: true

# User model
class User < ApplicationRecord
  has_secure_password

  # Associations
  has_many :comments, dependent: :nullify
  has_many :events, through: :comments
  has_many :reports, dependent: :nullify

  # Validations
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
