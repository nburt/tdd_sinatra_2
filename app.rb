require 'sinatra/base'
require 'sinatra'

class App < Sinatra::Application

  TASKS = []

  get '/' do
    erb :index
  end

  get '/add-task' do
    erb :add_task
  end

  post '/' do
    TASKS << params[:task_to_add]
    redirect '/'
  end

end