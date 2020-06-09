class AddAthleteToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :athlete, foreign_key: true
  end
end
