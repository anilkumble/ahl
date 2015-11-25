class AddCardsToPlayers < ActiveRecord::Migration
  def change
      add_column :players, :green_cards, :integer
      add_column :players, :yellow_cards, :integer
      add_column :players, :red_cards, :integer
  end
end
