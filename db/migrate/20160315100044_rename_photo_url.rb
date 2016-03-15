class RenamePhotoUrl < ActiveRecord::Migration
  def change
    rename_column :photos, :image, :photo_url
  end
end
