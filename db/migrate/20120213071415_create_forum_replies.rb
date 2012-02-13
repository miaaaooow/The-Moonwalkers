class CreateForumReplies < ActiveRecord::Migration
  def up
    create_table :forum_replies do |t|
      t.text :text
      t.references :forum_topic
      t.references :user

      t.timestamps
    end
  end

  def down
    drop_table :forum_replies
  end
end
