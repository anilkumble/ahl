class AddDefaultValueForCards < ActiveRecord::Migration
  def change
      change_column :players, :red_cards, :integer, default: 0
      change_column :players, :green_cards, :integer, default: 0
      change_column :players, :yellow_cards, :integer, default: 0
  end
end
