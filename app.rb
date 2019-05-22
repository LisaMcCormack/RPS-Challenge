require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter_name
  end

  #is it ok to have @name equal params
  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    session[:shape] = params[:shape]
    session[:computer_shape] = Computer.new.shape
    redirect '/result'
  end


  get '/result' do
    @shape = session[:shape]
    @computer_shape = session[:computer_shape]
    erb :result
  end
end
