class AddCaptionToReports < ActiveRecord::Migration
  def change
      add_column :reports, :caption, :text
  end
end
