class AddStatusToMatches < ActiveRecord::Migration
  def change
      add_column :matches, :running, :boolean, default: false
  end
end
