class AddMatchIdToLiveScores < ActiveRecord::Migration
  def change
	add_column :live_scores, :match_id, :integer
  end
end
