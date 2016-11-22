require "sinatra"
require_relative "models/player"
require_relative "models/team"
require 'pry'

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = TeamData.to_h.keys
  erb :teams
end

get "/teams/:team_name" do
  @team_name = params[:team_name]
  @team_info = TeamData.to_h[params[:team_name]]
  erb :team_name
end
