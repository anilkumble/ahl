class AddManOfTheMatchToMatches < ActiveRecord::Migration
  def change
	add_column :matches, :man_of_the_match, :integer
  end
end
