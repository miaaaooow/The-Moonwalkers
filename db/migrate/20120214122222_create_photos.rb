# -*- encoding : utf-8 -*-
class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.string :photo
      t.text :description
      t.references :album
    end
  end

  def down
    drop_table :photos
  end
end
