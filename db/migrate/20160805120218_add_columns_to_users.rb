class AddColumnsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :name, :string
    add_column :users, :admin, :boolean, default: false
  end
  def down
    remove_column :users, :name, :string
    remove_column :users, :admin, :boolean, default: false
  end
end
