# frozen_string_literal: true

class AddGameToStat < ActiveRecord::Migration[5.2]
  def change
    add_reference :stats, :game, foreign_key: true
  end
end
