class AddFieldsToAgents < ActiveRecord::Migration[8.1]
  def change
    add_column :agents, :codename, :string
    add_column :agents, :active, :boolean
  end
end
