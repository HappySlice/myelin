class CreateChannelrelationships < ActiveRecord::Migration
  def self.up
    create_table :channelrelationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    add_index :channelrelationships, :follower_id
    add_index :channelrelationships, :followed_id
    add_index :channelrelationships, [:follower_id, :followed_id], :unique => true
  end

  def self.down
    drop_table :channelrelationships
  end
end
