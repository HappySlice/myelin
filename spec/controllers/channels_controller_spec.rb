require 'spec_helper'

describe ChannelsController do
  render_views
  
  describe "GET 'show'" do
    
    before(:each) do
      @channel = Factory(:channel)
    end
    
    it "should be successful" do
      get :show, :id => @channel
      response.should be_success
    end
    
    it "should find the right channel" do
      get :show, :id => @channel
      assigns(:channel).should == @channel
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "New channel")
    end
    
    it "should include the channel's name" do
      get :show, :id => @channel
      response.should have_selector("h1", :content => @channel.name)
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end
end
