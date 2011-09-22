class ChannelsController < ApplicationController
  
  def show
    @channel = Channel.find(params[:id])
  end
  
  def new
    @title = "New channel"
  end

end
