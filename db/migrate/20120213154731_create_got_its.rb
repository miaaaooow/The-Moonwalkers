# -*- encoding : utf-8 -*-
class CreateGotIts < ActiveRecord::Migration
  def up
    create_table :got_its do |t|
      t.references :user, :null => false
      t.references :dashboard_entry, :null => false

      t.timestamps
    end
  end
  
  def down
    drop_table :got_its
  end
end
