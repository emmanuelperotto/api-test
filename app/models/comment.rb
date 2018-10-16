# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # Validations
  validates :text, presence: true

  # Scopes
  scope(:reported, -> { where(reported: true) })
end
