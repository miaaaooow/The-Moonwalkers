class CreateRelationships < ActiveRecord::Migration
  def up
    create_table :relationships do |t|
      t.string :type
      t.integer :from_mw_user_id
      t.integer :to_mw_user_id

      t.timestamps
    end
  end

  def down
    drop_table :relationships
  end
end
