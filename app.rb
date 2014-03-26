require 'sinatra/base'
require 'sinatra'

class App < Sinatra::Application

  get '/' do
    erb :index
  end

end