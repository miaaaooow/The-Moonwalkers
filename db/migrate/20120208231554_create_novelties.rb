class CreateNovelties < ActiveRecord::Migration
  def up
    create_table :novelties do |t|
      t.string :title
      t.string :text
      t.references :user

      t.timestamps
    end
  end

  def down
    drop_table :novelties
  end
end
