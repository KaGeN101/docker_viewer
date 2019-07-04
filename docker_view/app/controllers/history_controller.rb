require 'rest_client'

class HistoryController < ApplicationController
  def index
    @name = params[:name]
    @tag = params[:tag]
    #puts "#{ENV["REGISTRY"]}/v2/#{@name}/manifest/#{@tag}"]
    response = nil
    begin
      response =  RestClient::Request.execute method: :get, url: "#{ENV["REGISTRY"]}/v2/#{@name}/manifests/#{@tag}", user: ENV['USERNAME'], password: ENV['PASSWORD']
    rescue => e
      @history = "Got exception retrieving history: #{e}"
      return
    end 
    @history = check response
  end

  private

  def check response
    hash = JSON.parse response.to_str
    history = ''
    hash['history'].each do |history_hash| 
      v1_comp = JSON.parse history_hash['v1Compatibility']
      #p v1_comp['container_config']['Cmd'][0]
      line = v1_comp['id'].strip + "\t" + v1_comp['container_config']['Cmd'][0]
      history += line + "\n"
    end
    history
  end

end
