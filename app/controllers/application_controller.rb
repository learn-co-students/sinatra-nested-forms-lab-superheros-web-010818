require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    # binding.pry
    team = params["team"]
    members = team["members"]
    @team = Team.new(team["name"], team["motto"])
    @hero1 = Hero.new(members[0]["name"],members[0]["power"],members[0]["bio"])
    @hero2 = Hero.new(members[1]["name"],members[1]["power"],members[1]["bio"])
    @hero3 = Hero.new(members[2]["name"],members[2]["power"],members[2]["bio"])
    erb :team

  end


end
