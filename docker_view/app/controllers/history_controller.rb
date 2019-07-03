class HistoryController < ApplicationController
  def index
    @name = params[:name]
    output = []
    IO.popen("docker history #{params[:name]}").each do |line|
      output << line.chomp
    end
    @history = ''
    output.each {|line| @history += line + "\n"}
  end
end
