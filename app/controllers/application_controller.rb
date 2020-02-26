require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero_1 = params[:team][:members][:name][0][:member1_name]
        @hero_1_power = params[:team][:members][:name][0][:member1_power]
        @hero_1_bio = params[:team][:members][:name][0][:member1_bio]

        @hero_2 = params[:team][:members][:name][0][:member2_name]
        @hero_2_power = params[:team][:members][:name][0][:member2_power]
        @hero_2_bio = params[:team][:members][:name][0][:member2_bio]

        @hero_3 = params[:team][:members][:name][0][:member3_name]
        @hero_3_power = params[:team][:members][:name][0][:member3_power]
        @hero_3_bio = params[:team][:members][:name][0][:member3_bio]

                # binding.pry
        erb :team
    end



end
