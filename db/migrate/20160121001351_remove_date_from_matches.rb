class RemoveDateFromMatches < ActiveRecord::Migration
  def change
      remove_column :matches, :date
  end
end
