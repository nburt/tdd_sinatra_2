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

  get '/task/:id' do
    erb :show_task, locals: {:id => params[:id], :task => TASKS[params[:id].to_i]}
  end

end