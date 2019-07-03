class HistoryController < ApplicationController
  def index
    #p params[:name]
    system("docker history #{params[:name]}")
  end
end