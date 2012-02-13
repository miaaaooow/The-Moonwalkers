class CreateAlbums < ActiveRecord::Migration
  def up
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.string :cover

      t.timestamps
    end
  end

  def down
    drop_table :albums
  end
end
