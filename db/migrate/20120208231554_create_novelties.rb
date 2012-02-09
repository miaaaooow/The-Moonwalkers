class CreateNovelties < ActiveRecord::Migration
  def change
    create_table :novelties do |t|
      t.integer :created_by
      t.string :content
      t.timestamps
    end
  end
end
