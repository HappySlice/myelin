class AddNameUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :name,  :unique => true
    add_index :channels, :name, :unique => true
  end

  def self.down
    remove_index :users, :name
    remove_index :channels, :name
  end
end
