class ChangeResultToInteger < ActiveRecord::Migration
  def change
      change_column :matches, :result, :integer
  end
end
