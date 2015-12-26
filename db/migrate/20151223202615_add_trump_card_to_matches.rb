class AddTrumpCardToMatches < ActiveRecord::Migration
  def change
      add_column :matches, :trump_card, :integer
  end
end
