# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :opponent, foreign_key: true
      t.references :location, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
