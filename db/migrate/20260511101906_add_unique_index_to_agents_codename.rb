class AddUniqueIndexToAgentsCodename < ActiveRecord::Migration[7.0]
  def change
    add_index :agents, :codename, unique: true
  end
end
