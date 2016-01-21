class AddDateAndTimeToMatches < ActiveRecord::Migration
  def change
      add_column :matches, :time, :datetime
  end
end
