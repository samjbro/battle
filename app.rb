require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/player_names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    # $player_1
    # $player_2
    erb :play
  end

  get '/attack' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
