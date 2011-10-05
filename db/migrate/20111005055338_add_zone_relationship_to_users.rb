class AddZoneRelationshipToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :zone_id, :integer

    execute(%q{
      UPDATE users SET zone_id = 1
    })
  end

  def self.down
    remove_column :users, :zone_id
  end
end
