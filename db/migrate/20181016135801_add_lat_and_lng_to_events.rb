# frozen_string_literal: true

class AddLatAndLngToEvents < ActiveRecord::Migration[5.2]
  def change
    change_table :events, bulk: true do |t|
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
    end
  end
end
