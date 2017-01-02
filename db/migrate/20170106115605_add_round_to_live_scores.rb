class AddRoundToLiveScores < ActiveRecord::Migration
  def change
    add_column :live_scores, :round, :string
  end
end
