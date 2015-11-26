class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :article
      t.string :image
      t.timestamps null: false
    end
  end
end
