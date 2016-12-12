class CreateCardGameJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :cards, :games do |t|
      t.index :card_id
      t.index :game_id
    end
  end
end
