class AddDefaultResultToMatches < ActiveRecord::Migration
  def change
      change_column :matches, :result, :integer, default: -2
  end
end
