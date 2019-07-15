require 'sinatra/base'
require './lib/computer'
require './lib/turn'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter_name
  end

  post '/welcome' do
    session[:name] = params[:name]
    redirect :welcome
  end

  get '/welcome' do
    @name = session[:name]
    erb :welcome
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    p params
    @turn = Turn.new(session)
    session[:shape] = params[:shape].downcase.to_sym
    session[:computer_shape] = Computer.new.shape
    redirect '/result'
  end


  get '/result' do
    @turn = Turn.new(session)
    erb :result
  end
end
