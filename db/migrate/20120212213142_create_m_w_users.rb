class CreateMWUsers < ActiveRecord::Migration
  def change
    create_table :m_w_users do |t|
      t.string :username, :null => false
      t.string :name
      t.string :display_name
      t.text :description
      t.string :email, :null => false
      t.string :hashed_password, :null =>false
      t.string :salt
      t.string :song, :limit => 64
      t.string :picture
      t.string :birthday
      t.boolean :admin, :default => false
      t.boolean :moonwalker, :default => false

      t.timestamps
    end
  end
end
