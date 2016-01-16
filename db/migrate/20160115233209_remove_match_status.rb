class RemoveMatchStatus < ActiveRecord::Migration
  def change
      remove_column :matches, :running
  end
end
