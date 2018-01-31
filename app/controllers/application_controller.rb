require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/team' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      @team.members << Hero.new(params[:team][:heros][0][:name], params[:team][:heros][0][:power], params[:team][:heros][0][:bio])
      @team.members << Hero.new(params[:team][:heros][1][:name], params[:team][:heros][1][:power], params[:team][:heros][1][:bio])
      @team.members << Hero.new(params[:team][:heros][2][:name], params[:team][:heros][2][:power], params[:team][:heros][2][:bio])

      erb :team
    end


end
