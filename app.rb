require 'sinatra/base'
require 'sinatra'
require './lib/task_repository'

class App < Sinatra::Application

  TASKS = Task.new

  get '/' do
    erb :index, locals: {:tasks => TASKS.to_do_list}
  end

  get '/add-task' do
    erb :add_task
  end

  post '/' do
    TASKS.add(params[:task_to_add])
    redirect '/'
  end

  get '/task/:id' do
    erb :show_task, locals: {:id => params[:id], :task => TASKS.to_do_list[params[:id].to_i]}
  end

  get '/task/:id/edit' do
    erb :edit_task, locals: {:id => params[:id], :task => TASKS.to_do_list[params[:id].to_i]}
  end

  put '/task/:id' do
    TASKS.edit(TASKS.to_do_list[params[:id].to_i], params[:task_to_edit])
    redirect '/'
  end

  delete '/task/:id' do
    TASKS.delete(TASKS.to_do_list[params[:id].to_i])
    redirect '/'
  end
end