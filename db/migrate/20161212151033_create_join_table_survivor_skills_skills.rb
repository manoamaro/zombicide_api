class CreateJoinTableSurvivorSkillsSkills < ActiveRecord::Migration[5.0]
  def change
    create_join_table :skills, :survivor_skills do |t|
      t.index :skill_id
      t.index :survivor_skill_id
    end
  end
end
