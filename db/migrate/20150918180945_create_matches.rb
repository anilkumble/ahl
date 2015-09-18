class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.date :date
      t.string :result

      t.timestamps null: false
    end
  end
end
