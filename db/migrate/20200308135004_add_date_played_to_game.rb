class AddDatePlayedToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :date_played, :date
  end
end
