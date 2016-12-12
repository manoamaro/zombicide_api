class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :is_playable
      t.boolean :is_expansion
      t.string :image

      t.timestamps
    end
  end
end
