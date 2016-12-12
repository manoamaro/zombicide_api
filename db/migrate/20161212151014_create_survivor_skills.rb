class CreateSurvivorSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :survivor_skills do |t|
      t.references :survivor, foreign_key: true
      t.integer :starting_level

      t.timestamps
    end
  end
end
