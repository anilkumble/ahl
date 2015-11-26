class CreateLiveScores < ActiveRecord::Migration
  def change
    create_table :live_scores do |t|
      t.integer :teamone_goals
      t.integer :teamtwo_goals
      t.text :commentary
      t.timestamps null: false
    end
  end
end
