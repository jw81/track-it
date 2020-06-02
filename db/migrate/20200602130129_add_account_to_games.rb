class AddAccountToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :account, foreign_key: true
  end
end
