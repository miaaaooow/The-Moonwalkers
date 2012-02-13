class CreateMwUsers < ActiveRecord::Migration
  def up
    create_table :mw_users do |t|
      t.string :display_name
      t.text :description
      t.string :birthday
    end
  end

  def down
    drop_table :mw_users
  end
end
