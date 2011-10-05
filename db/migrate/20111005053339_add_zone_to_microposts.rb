class AddZoneToMicroposts < ActiveRecord::Migration
  def self.up
    add_column :microposts, :zone_id, :interger
    execute(%q{
      UPDATE microposts SET zone_id = 1
    })

    add_index "microposts", ["zone_id"], :name => "fk_index_microposts_zone_id"
  end

  def self.down
    remove_column :microposts, :zone_id

    remove_index "microposts", ["zone_id"]
  end
end
