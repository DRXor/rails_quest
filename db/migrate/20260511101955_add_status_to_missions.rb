class AddStatusToMissions < ActiveRecord::Migration[8.1]
  def change
    add_column :missions, :status, :string
  end
end
