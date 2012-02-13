class CreateDashboardEntries < ActiveRecord::Migration
  def up
    create_table :dashboard_entries do |t|
      t.string :content, :null => false
      t.references :user, :null => false

      t.timestamps
    end
  end

  def down
    drop_table :dashboard_entries
  end
end
