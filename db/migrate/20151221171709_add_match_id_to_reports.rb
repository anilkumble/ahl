class AddMatchIdToReports < ActiveRecord::Migration
  def change
      add_column :reports, :match_id, :integer
  end
end
