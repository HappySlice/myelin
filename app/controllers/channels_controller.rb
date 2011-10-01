class ChannelsController < ApplicationController
  
  def show
    @channel = Channel.find(params[:id])
    @title = @channel.name
  end
  
  def new
    @title = "New channel"
  end

end
