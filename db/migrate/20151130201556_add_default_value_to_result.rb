class AddDefaultValueToResult < ActiveRecord::Migration
  def change
      change_column :matches, :result, :integer, default: -1
  end
end
