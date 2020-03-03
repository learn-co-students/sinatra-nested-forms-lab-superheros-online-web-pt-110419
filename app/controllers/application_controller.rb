require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
    #  binding.pry
      team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:heroes].each do |hero|
        new_hero = Hero.new(hero)
        new_hero.team = team
        new_hero.save
      end

      redirect to "/teams/#{team.id}"
    end

    get '/teams/list' do
      erb :all
    end

    get '/teams/:id' do
      @team = Team.find(params[:id])
      erb :team

    end

end
