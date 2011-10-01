class CreateChannels < ActiveRecord::Migration
  def self.up
    create_table :channels do |t|
      t.string :name
      t.integer :zone
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :channels
  end
end
