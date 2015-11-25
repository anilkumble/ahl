class RemoveGoalsFromPlayers < ActiveRecord::Migration
  def change
	remove_column :players, :goals
  end
end
