# -*- encoding : utf-8 -*-
class CreateForumTopics < ActiveRecord::Migration
  def up
    create_table :forum_topics do |t|
      t.string :title
      t.text :text
      t.references :user
      t.timestamps
    end
  end

  def down
    drop_table :forum_topics
  end
end
