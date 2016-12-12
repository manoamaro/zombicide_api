class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :card_type
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
