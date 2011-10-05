class CreateZones < ActiveRecord::Migration
  def self.up
    create_table :zones do |t|
      t.string :lat
      t.string :long

      t.timestamps
    end

    execute(%q{
      INSERT INTO zones (id, lat, long) VALUES (1, '23.62362', '-56.23612')
    })
    execute(%q{
      INSERT INTO users (id, lat, long) VALUES (1, '23.62362', '-56.23612')
    })

  end

  def self.down
    drop_table :zones
  end
end
