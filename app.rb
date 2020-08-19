require 'sinatra/base'
require 'rspec'
require './lib/player'

class Battle < Sinatra::Base
   enable :sessions
    
   get '/' do
        erb(:index)
    end

    post '/players' do
      $player_1 = Player.new(params[:Player_1])
      $player_2 = Player.new(params[:Player_2])
      redirect '/play'
    end

    get '/play' do
        @Player_1 = $player_1
        @Player_2 = $player_2
        erb(:play)
    end

    get '/attack' do
        @Player_1 = $player_1
        @Player_2 = $player_2
        @Player_1.attack(@Player_2)
        erb(:attack)
    end
    run! if app_file == $0
end
