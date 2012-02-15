# -*- encoding : utf-8 -*-
class CreateAlbumPhotos < ActiveRecord::Migration
  def up
    create_table :album_photos do |t|
      t.string :photo_url
      t.text :description
      t.references :album
    end
  end

  def down
    drop_table :album_photos
  end
end
