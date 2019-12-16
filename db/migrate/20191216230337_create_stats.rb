class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :type
      t.integer :value

      t.timestamps
    end
  end
end
