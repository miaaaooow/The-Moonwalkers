# -*- encoding : utf-8 -*-
class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username, :null => false
      t.string :name
      t.string :email, :null => false
      t.string :hashed_password, :null =>false
      t.string :salt, :limit => 32
      t.string :song, :limit => 64
      t.string :album, :limit => 32
      t.string :picture
      t.string :contact
      t.boolean :admin, :null => false, :default => false
      t.boolean :moonwalker, :null => false, :default => false
     
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
