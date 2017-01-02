class AddTimeToLiveScores < ActiveRecord::Migration
  def change
    add_column :live_scores, :time, :string
  end
end
