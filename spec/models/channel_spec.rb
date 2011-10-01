require 'spec_helper'

describe Channel do
  
  before(:each) do
    @attr = { :name => "OuterSpace", :zone => 1 }
  end
  
  it "should create a new instance given valid attributes" do
    Channel.create!(@attr)
  end
  
  it "should require a name" do
    no_name_channel = Channel.new(@attr.merge(:name => ""))
    no_name_channel.should_not be_valid
  end
  
  it "should require a zone" do
    no_zone_channel = Channel.new(@attr.merge(:zone => ""))
    no_zone_channel.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_channel = Channel.new(@attr.merge(:name => long_name))
    long_name_channel.should_not be_valid
  end
  
  it "should reject duplicate names" do
    Channel.create!(@attr)
    channel_with_duplicate_name = Channel.new(@attr)
    channel_with_duplicate_name.should_not be_valid
  end
  
  it "should reject names identical up to case" do
    upcased_name = @attr[:name].upcase
    Channel.create!(@attr.merge(:name => upcased_name))
    channel_with_duplicate_name = Channel.new(@attr)
    channel_with_duplicate_name.should_not be_valid
  end
end
