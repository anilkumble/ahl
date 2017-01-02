class RemoveEmailFromLiveScores < ActiveRecord::Migration
  def change
    remove_column :live_scores, :email, :string
  end
end
