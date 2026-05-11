class AddUniqueIndexToAgentSkills < ActiveRecord::Migration[7.0]
  def change
    add_index :agent_skills, [:agent_id, :skill_id], unique: true
  end
end
