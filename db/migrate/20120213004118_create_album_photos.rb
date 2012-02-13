class CreateAlbumPhotos < ActiveRecord::Migration
  def change
    create_table :album_photos do |t|
      t.string :photo_url
      t.text :description

      t.timestamps
    end
  end
end
