class ChangeColumnNameOfGoals < ActiveRecord::Migration
  def change
      rename_column :players, :goals, :goals_count
  end
end
