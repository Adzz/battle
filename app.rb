require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
      erb :index
    end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attacked' do
    erb :attacked
  end

  get '/play2' do
    player_2 = $game.player_2
    $game.attack(player_2)
    erb :play2
  end

  get '/attacked2' do
    player_1 = $game.player_1
    $game.attack(player_1)
    erb :attacked2
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

#Test comment
