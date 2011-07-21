class AddPermissionsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :perm, :string, :default => nil
  end

  def self.down
    remove_column :users, :perm, :string
  end
end
