require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

    enable :sessions


  get '/' do
      erb :index
    end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    @player_1_health = $player_1_name.hit_points
    @player_2_health = $player_2_name.hit_points
    erb :play
  end

  get '/attacked' do
    $player_2_name.attack
    erb :attacked
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

#Test comment
