require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :team
  end

  post '/teams' do
    @team = Team.new(params["team"]["name"], params["team"]["motto"])
    @members = params["team"]["members"]

    @members.each do |k, v|
      count = 1
      name = v["name"]
      power = v["power"]
      biography = v["biography"]
      @team.add_hero(Hero.new(name, power, biography, @team))
      count += 1
    end

    erb :index
  end

end
