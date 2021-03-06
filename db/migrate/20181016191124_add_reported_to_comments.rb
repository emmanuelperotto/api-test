# frozen_string_literal: true

class AddReportedToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :reported, :boolean, default: false
  end
end
