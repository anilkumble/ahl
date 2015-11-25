class AddDefaultImageToPhotos < ActiveRecord::Migration
  def change
      add_column :players, :photo, :string, default: "unknown.jpg"
  end
end
