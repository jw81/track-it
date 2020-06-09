class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
