class AddGoalsToPlayers < ActiveRecord::Migration
  def change
      add_column :players, :goals, :integer, default: 0
  end
end
