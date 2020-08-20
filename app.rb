require 'sinatra/base'
require 'rspec'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
   enable :sessions
    
   get '/' do
        erb(:index)
    end

    post '/players' do
      player_1 = Player.new(params[:Player_1])
      player_2 = Player.new(params[:Player_2])
      $game = Game.new(player_1, player_2)
      redirect '/play'
    end

    get '/play' do
        @game = $game
        erb(:play)
    end

    get '/attack' do
       @game = $game
       @game.attack(@game.opponent_of(@game.current_turn)) 
        erb(:attack)
    end

    post '/switch_turns' do
        $game.switch_turns
        redirect('/play')
    end
    run! if app_file == $0
end
