class AddDefaultPointsToTeams < ActiveRecord::Migration
  def change
      change_column :teams, :points, :integer, default: -2
  end
end
