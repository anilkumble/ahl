class RemoveTeamNameFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :team_name, :string
  end
end
